require "dbus"

module BlueCr
  class DBusAdapterHandler
    getter :name, :object, :interface

    def initialize(@name : String, @object : DBus::Object, @interface : DBus::Interface)
    end
  end
end
