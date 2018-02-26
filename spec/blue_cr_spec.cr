require "./spec_helper.cr"
require "dbus"
require "xml"

describe BlueCr do
  it "List all avilable adaptors" do
    adaptors = BlueCr.list_adaptors
    adaptors.should be_a(Array(String))
  end

  it "get adaptor object" do
    adaptors = BlueCr.list_adaptors
    adaptor = BlueCr::Adaptor.new(adaptors.first)
    adaptor.should be_a(BlueCr::Adaptor)
  end

  it "start and stop discovery" do
    adaptors = BlueCr.list_adaptors
    adaptor = BlueCr::Adaptor.new(adaptors.first)
    adaptor.start_discovery
    sleep 5
    adaptor.stop_discovery
  end

  it "lists devices" do
    adaptors = BlueCr.list_adaptors
    adaptor = BlueCr::Adaptor.new(adaptors.first)
    adaptor.start_discovery
    sleep 5
    devices = adaptor.list_devices
    adaptor.stop_discovery

    devices.should be_a(Array(String))
  end

  it "creates device object from address" do
    adaptors = BlueCr.list_adaptors
    adaptor = BlueCr::Adaptor.new(adaptors.first)
    adaptor.start_discovery
    sleep 5
    devices = adaptor.list_devices
    adaptor.stop_discovery

    device = adaptor.get_device(devices.first)
    device.should be_a(BlueCr::Device)
  end

  it "generate cool info from devices" do
    adaptors = BlueCr.list_adaptors
    adaptor = BlueCr::Adaptor.new(adaptors.first)
    adaptor.start_discovery
    sleep 5
    devices = adaptor.list_devices
    adaptor.stop_discovery

    devices.each do |name|
      device = adaptor.get_device(name)
      if device
        next unless device.alive?
        begin
          puts device.connect
          sleep 5
          device.refresh
          puts "#######################"
          puts "Device: #{device.name}"
          puts "Address: #{device.address}"
          puts "UUIDs: #{device.uuids}"
          puts "Dump: #{device.all_properties}"
          device.list_services
          device.services.each do |uuid, service|
            puts "Service: #{uuid}: #{service.service_type}"
            service.list_characteristics
            service.characteristics.each do |uuid, char|
              puts "  Characteristic: #{uuid}: #{char.characteristic_type}"
              puts "  Read Value: #{char.read_value}\n"
              puts "  Write Value: #{char.write_value([0_u8, 1_u8, 2_u8, 255_u8])}\n"
            end
          end
          puts "#######################\n"
        rescue e : Exception
          puts "Error: #{e}"
          next
        ensure
          puts device.disconnect
        end
      end
    end
  end

  # it "swat drone" do
  #   adaptors = BlueCr.list_adaptors
  #   adaptor = BlueCr::Adaptor.new(adaptors.first)
  #   adaptor.start_discovery
  #   sleep 5
  #   devices = adaptor.list_devices
  #   adaptor.stop_discovery

  #   device = adaptor.get_device("E0:14:18:67:3D:C2")
  #   if device
  #     puts device.connect
  #     sleep 5
  #     device.refresh
  #     puts "#######################"
  #     puts "Device: #{device.name}"
  #     puts "Address: #{device.address}"
  #     puts "UUIDs: #{device.uuids}"
  #     puts "Dump: #{device.all_properties}"
  #     puts "Service enumaration: "
  #     puts device.list_services
  #     puts "#######################\n"
  #     puts device.disconnect
  #   end
  # end
end
