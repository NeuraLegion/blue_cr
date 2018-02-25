module BlueCr
  class Service
    getter :object, :interface, :all_properties
    @all_properties : Hash(DBus::Type, DBus::Type)

    def initialize(@adaptor_name : String, @device_name : String, @object : DBus::Object, @interface : DBus::Interface, @proporties : DBus::Interface)
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
