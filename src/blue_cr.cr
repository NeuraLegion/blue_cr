require "xml"
require "dbus"
require "./blue_cr/**"

module BlueCr
  extend self

  def list_adaptors
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
    ble_interface_names
  end
end
