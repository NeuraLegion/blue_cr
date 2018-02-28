module BlueCr
  class Characteristic
    getter :object, :interface, :all_properties
    @all_properties : Hash(DBus::Type, DBus::Type)

    def initialize(@object : DBus::Object, @interface : DBus::Interface, @proporties : DBus::Interface)
      @all_properties = get_all
    end

    def uuid
      name = @all_properties["UUID"]?
      if name.is_a?(DBus::Variant)
        name.value
      else
        name
      end
    end

    def value
      name = @all_properties["Value"]?
      if name.is_a?(DBus::Variant)
        name.value
      else
        name
      end
    end

    def write_value(value : Slice(UInt8), options : Hash(String, DBus::Variant) = Hash(String, DBus::Variant).new)
      response = @interface.call("WriteValue", [value.to_a, options]).reply
      response_handler(response)
    end

    def write_value(value : Array(UInt8), options : Hash(String, DBus::Variant) = Hash(String, DBus::Variant).new)
      response = @interface.call("WriteValue", [value, options]).reply
      response_handler(response)
    end

    def read_value(options : Hash(String, DBus::Variant) = Hash(String, DBus::Variant).new)
      response = @interface.call("ReadValue", [options]).reply
      response_handler(response)
    end

    def characteristic_type
      BlueCr::DbGattCharacteristics.by_uuid(uuid.to_s)
    end

    def refresh
      @all_properties = get_all
    end

    private def response_handler(response : DBus::Type)
      if response.is_a?(Array(DBus::Type))
        if response.size > 0
          if response.first.is_a?(DBus::Variant)
            response[0].as(DBus::Variant).value.as(DBus::Type)
          elsif response.first.is_a?((Hash(DBus::Type, DBus::Type)))
            return response.first.as(Hash(DBus::Type, DBus::Type))
          else
            response[0].as(DBus::Type)
          end
        end
      elsif response.is_a?(Hash(DBus::Type, DBus::Type))
      else
        response.as(DBus::Type)
      end
    end

    private def get_all
      prop = @proporties.call("GetAll", ["org.bluez.GattCharacteristic1"]).reply
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
