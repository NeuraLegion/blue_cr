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
    adaptor = BlueCr::DBusAdapterHandler.new(adaptors.first)
    adaptor.should be_a(BlueCr::DBusAdapterHandler)
  end

  it "start and stop discovery" do
    adaptors = BlueCr.list_adaptors
    adaptor = BlueCr::DBusAdapterHandler.new(adaptors.first)
    adaptor.start_discovery
    sleep 5
    adaptor.stop_discovery
  end

  it "lists devices" do
    adaptors = BlueCr.list_adaptors
    adaptor = BlueCr::DBusAdapterHandler.new(adaptors.first)
    adaptor.start_discovery
    sleep 5
    devices = adaptor.list_devices
    adaptor.stop_discovery

    devices.should be_a(Array(String))
  end

  it "creates device object from address" do
    adaptors = BlueCr.list_adaptors
    adaptor = BlueCr::DBusAdapterHandler.new(adaptors.first)
    adaptor.start_discovery
    sleep 5
    devices = adaptor.list_devices
    adaptor.stop_discovery

    device = adaptor.get_device(devices.first)
    device.should be_a(BlueCr::Device)
  end

  it "generate cool info from devices" do
    adaptors = BlueCr.list_adaptors
    adaptor = BlueCr::DBusAdapterHandler.new(adaptors.first)
    adaptor.start_discovery
    sleep 5
    devices = adaptor.list_devices
    adaptor.stop_discovery

    devices.each do |name|
      device = adaptor.get_device(name)
      next unless device
      puts "#######################"
      puts "Device: #{device.name}"
      puts "Address: #{device.address}"
      puts "UUIDs: #{device.uuids}"
      puts "Dump: #{device.all_properties}"
      puts "#######################\n"
    end
  end
end
