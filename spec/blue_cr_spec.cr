require "dbus"

bus = DBus::Bus.new(DBus::BusType::SYSTEM)

dest = bus.destination("org.bluez")
puts "Dest: #{dest}"
inter = dest.interface("org.freedesktop.DBus.Introspectable")
p inter.call("Introspect").reply
obj = dest.object("/org/bluez/hci1")
puts "Obj: #{obj}"
int = obj.interface("org.bluez.Adapter1")
prop = obj.interface("org.freedesktop.DBus.Properties")
puts "Interface: #{int}"
p int.call("StartDiscovery").reply
p int.call("GetDiscoveryFilters").reply
sleep 2
p int.call("StopDiscovery").reply
p prop.call("Get", ["org.bluez.Adapter1", "Address"]).reply
