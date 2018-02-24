require "dbus"
require "xml"

module BlueCr
  class DBusAdapterHandler
    getter :name, :object, :interface

    @object : DBus::Object
    @dest : DBus::Object
    @interface : DBus::Interface

    def initialize(@name : String)
      bus = DBus::Bus.new(DBus::BusType::SYSTEM)
      @dest = bus.destination("org.bluez")

      @object = @dest.object("/org/bluez/#{@name}")
      @interface = @object.interface("org.bluez.Adapter1")
      @devices = Hash(String, BlueCr::Device).new
    end

    def start_discovery
      answer = @interface.call("StartDiscovery").reply
      raise BlueCr::BluzDBusError.new(answer.first.to_s) unless answer.empty?
    end

    def stop_discovery
      answer = @interface.call("StopDiscovery").reply
      raise BlueCr::BluzDBusError.new(answer.first.to_s) unless answer.empty?
    end

    def list_devices : Array(String)
      intro = @object.interface("org.freedesktop.DBus.Introspectable")
      introspect_xml = intro.call("Introspect").reply
      xml = XML.parse(introspect_xml.first.to_s)
      ble_devices_names = Array(String).new
      xml.xpath("//node/*").as(XML::NodeSet).each do |node|
        if node.to_s.includes?("dev_")
          object = @dest.object("/org/bluez/#{@name}/#{node["name"]}")
          interface = object.interface("org.bluez.Device1")
          prop = object.interface("org.freedesktop.DBus.Properties")
          device = BlueCr::Device.new(object, interface, prop)
          @devices[device.address.to_s] = device
          ble_devices_names << device.address.to_s
        end
      end
      ble_devices_names
    end

    def get_device(address : String) : BlueCr::Device?
      @devices[address]?
    end
  end
end
