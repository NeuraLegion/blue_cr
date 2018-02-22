module BlueCr
  class Device
    getter :object, :interface, :all_properties
    @all_properties : Hash(DBus::Type, DBus::Type)

    def initialize(@object : DBus::Object, @interface : DBus::Interface, @proporties : DBus::Interface)
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

    def name
      name = @all_properties["Alias"]?
      if name.is_a?(DBus::Variant)
        name.value
      else
        name
      end
    end

    def uuids
      uuid = @all_properties["UUIDs"]?
      if uuid.is_a?(DBus::Variant)
        uuid.value
      else
        uuid
      end
    end

    def connect
      @interface.call("Connect").reply
    end

    def disconnect
      @interface.call("Disconnect").reply
    end

    private def get_all
      @proporties.call("GetAll", ["org.bluez.Device1"]).reply.first.as(Hash(DBus::Type, DBus::Type))
    end
  end
end
