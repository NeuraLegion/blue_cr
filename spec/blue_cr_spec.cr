require "./spec_helper.cr"
require "dbus"
require "xml"

bus = DBus::Bus.new(DBus::BusType::SYSTEM)

dest = bus.destination("org.bluez")
introspectable_obj = dest.object("/org/bluez")
introspectable_interface = introspectable_obj.interface("org.freedesktop.DBus.Introspectable")
rpl1 = introspectable_interface.call("Introspect").reply
xml = XML.parse(rpl1[0].to_s)
ble_interface_names = Array(String).new
xml.xpath("//node/*").as(XML::NodeSet).each do |node|
  if node.to_s.includes?("hci")
    ble_interface_names << node["name"]
  end
end

ble_interface_adapters = Array(BlueCr::DBusAdapterHandler).new

ble_interface_names.each do |name|
  obj = dest.object("/org/bluez/#{name}")
  interface = obj.interface("org.bluez.Adapter1")
  ble_interface_adapters << BlueCr::DBusAdapterHandler.new(name, obj, interface)
end

ble_interface_adapters.each do |ble_adapter|
  puts "Scanning using adapter: #{ble_adapter.name}"
  answer = ble_adapter.interface.call("StartDiscovery").reply
  raise BlueCr::BluzDBusError.new(answer.first.to_s) unless answer.empty?
  sleep 10
  intro = ble_adapter.object.interface("org.freedesktop.DBus.Introspectable")
  introspect_xml = intro.call("Introspect").reply
  xml = XML.parse(introspect_xml.first.to_s)
  ble_devices_names = Array(BlueCr::Device).new
  xml.xpath("//node/*").as(XML::NodeSet).each do |node|
    if node.to_s.includes?("dev_")
      object = dest.object("/org/bluez/#{ble_adapter.name}/#{node["name"]}")
      interface = object.interface("org.bluez.Device1")
      prop = object.interface("org.freedesktop.DBus.Properties")
      device = BlueCr::Device.new(object, interface, prop)
      ble_devices_names << device
    end
  end
  ble_devices_names.each do |device|
    puts "#######################"
    puts "Device: #{device.name}"
    puts "Address: #{device.address}"
    puts "UUIDs: #{device.uuids}"
    puts "#######################\n"
  end
  answer = ble_adapter.interface.call("StopDiscovery").reply
  raise BlueCr::BluzDBusError.new(answer.first.to_s) unless answer.empty?
end
