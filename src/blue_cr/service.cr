module BlueCr
  class Service
    getter :object, :interface, :all_properties, :characteristics
    @all_properties : Hash(DBus::Type, DBus::Type)

    def initialize(@adaptor_name : String, @device_name : String, @service_name : String, @object : DBus::Object, @interface : DBus::Interface, @proporties : DBus::Interface)
      @all_properties = get_all
      @characteristics = Hash(String, BlueCr::Characteristic).new
      list_characteristics
    end

    def list_characteristics
      intro = @object.interface("org.freedesktop.DBus.Introspectable")
      introspect_xml = intro.call("Introspect").reply
      xml = XML.parse(introspect_xml.first.to_s)
      xml.xpath("//node/*").as(XML::NodeSet).each do |node|
        if node.to_s.includes?("char")
          object = @object.object("/org/bluez/#{@adaptor_name}/#{@device_name}/#{@service_name}/#{node["name"]}")
          interface = object.interface("org.bluez.GattCharacteristic1")
          prop = object.interface("org.freedesktop.DBus.Properties")
          characteristic = BlueCr::Characteristic.new(object, interface, prop)
          @characteristics[characteristic.uuid.to_s] = characteristic
        end
      end
      @characteristics
    end

    def uuid
      name = @all_properties["UUID"]?
      if name.is_a?(DBus::Variant)
        name.value
      else
        name
      end
    end

    def service_type
      BlueCr::DbGattServices.by_uuid(uuid.to_s)
    end

    def refresh
      @all_properties = get_all
    end

    private def get_all
      @proporties.call("GetAll", ["org.bluez.GattService1"]).reply.first.as(Hash(DBus::Type, DBus::Type))
    end
  end
end
