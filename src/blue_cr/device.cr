module BlueCr
  class Device
    getter :object, :interface

    def initialize(@object : DBus::Object, @interface : DBus::Interface, @proporties : DBus::Interface)
    end

    def address
      @proporties.call("Get", ["org.bluez.Device1", "Address"]).reply.first
    end

    def name
      @proporties.call("Get", ["org.bluez.Device1", "Name"]).reply.first
    end

    def connect
      @interface.call("Connect").reply
    end

    def disconnect
      @interface.call("Disconnect").reply
    end
  end
end
