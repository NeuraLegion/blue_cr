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

    def write_value(value)
      @interface.call("WriteValue", [value]).reply
    end

    def read_value : DBus::Type
      @interface.call("ReadValue").reply
    end

    def characteristic_type
      BlueCr::DbGattCharacteristics.by_uuid(uuid.to_s)
    end

    def refresh
      @all_properties = get_all
    end

    private def get_all
      @proporties.call("GetAll", ["org.bluez.GattCharacteristic1"]).reply.first.as(Hash(DBus::Type, DBus::Type))
    end
  end
end
