# blue_cr

Bluetooth interface using crystal and bluez

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  blue_cr:
    github: NeuraLegion/blue_cr
```

## Usage

```crystal
require "blue_cr"

# List all adaptors in the machine (hci*)
adaptors = BlueCr.list_adaptors

# Get first avilable adaptor and get back the adaptor object
adaptor = BlueCr::Adaptor.new(adaptors.first)

# Start discovery
adaptor.start_discovery
sleep 5

# Get back array of all device address
devices = adaptor.list_devices
adaptor.stop_discovery

# For each device found, get some info
devices.each do |name|
  device = adaptor.get_device(name)
  if device
  puts device.connect
  sleep 5
  device.refresh
  puts "#######################"
  puts "Device: #{device.name}"
  puts "Address: #{device.address}"
  puts "UUIDs: #{device.uuids}"
  puts "Dump: #{device.all_properties}"
  puts "Service enumaration: "
  device.list_services
  device.services.each do |uuid, service|
    puts "#{uuid}: #{service.service_type}"
  end
  puts "#######################\n"
  puts device.disconnect
end
end
```


## Development

- [x] scan for devices and get back array of addresses  
- [x] connect to a remote device  
- [ ] send arbitery commands to remote device  

## Contributing

1. Fork it ( https://github.com/NeuraLegion/blue_cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [bararchy](https://github.com/bararchy) - creator, maintainer
