module BlueCr
  class Device
    getter :object, :interface, :all_properties, :services
    @all_properties : Hash(DBus::Type, DBus::Type)

    def initialize(@adaptor_name : String, @device_name : String, @object : DBus::Object, @interface : DBus::Interface, @proporties : DBus::Interface)
      @all_properties = get_all
      @services = Hash(String, BlueCr::Service).new
    end

    def refresh
      @all_properties = get_all
    end

    def address
      addr = @all_properties["Address"]?
      if addr.is_a?(DBus::Variant)
        addr.value
      else
        addr
      end
    end

    def get_service(uuid : String) : BlueCr::Service?
      @services[uuid]?
    end

    def list_services
      intro = @object.interface("org.freedesktop.DBus.Introspectable")
      introspect_xml = intro.call("Introspect").reply
      xml = XML.parse(introspect_xml.first.to_s)
      xml.xpath("//node/*").as(XML::NodeSet).each do |node|
        if node.to_s.includes?("service")
          object = @object.object("/org/bluez/#{@adaptor_name}/#{@device_name}/#{node["name"]}")
          interface = object.interface("org.bluez.GattService1")
          prop = object.interface("org.freedesktop.DBus.Properties")
          service = BlueCr::Service.new(@adaptor_name, @device_name, node["name"], object, interface, prop)
          @services[service.uuid.to_s] = service
        end
      end
      @services
    end

    def name
      name = @all_properties["Alias"]?
      if name.is_a?(DBus::Variant)
        name.value
      else
        name
      end
    end

    def alive?
      @all_properties["RSSI"]?
    end

    def uuids
      uuid = @all_properties["UUIDs"]?
      if uuid.is_a?(DBus::Variant)
        uuid.value.as(Array(DBus::Type))
      else
        uuid.as(Array(DBus::Type))
      end
    end

    def connect
      @interface.call("Connect").reply
    end

    def disconnect
      @interface.call("Disconnect").reply
    end

    private def get_all
      prop = @proporties.call("GetAll", ["org.bluez.Device1"]).reply
      if prop.is_a?(Hash(DBus::Type, DBus::Type))
        return prop
      elsif prop.is_a?(Array(DBus::Type))
        if prop.first.is_a?((Hash(DBus::Type, DBus::Type)))
          return prop.first.as(Hash(DBus::Type, DBus::Type))
        else
          raise BluzDBusError.new(prop.first.to_s)
        end
      else
        raise BluzDBusError.new(prop.to_s)
      end
    end
  end
end
