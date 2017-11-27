require "./spec_helper"

describe BlueCr do
  it "open and close device" do
    dev_id = LibBlueZ.get_route(nil)
    puts "Got dev id: #{dev_id}"
    dev = LibBlueZ.open_dev(dev_id) # hci0
    puts "Dev: #{dev}"
    sleep 1
    LibBlueZ.close_dev(dev)
  end

  # Copy C Example
  # int main(int argc, char **argv)
  #   {
  #   inquiry_info *ii = NULL;
  #   int max_rsp, num_rsp;
  #   int dev_id, sock, len, flags;
  #   int i;
  #   char addr[19] = { 0 };
  #   char name[248] = { 0 };

  #   dev_id = hci_get_route(NULL);
  #   sock = hci_open_dev( dev_id );
  #   if (dev_id < 0 || sock < 0) {
  #       perror("opening socket");
  #       exit(1);
  #   }

  #   len  = 8;
  #   max_rsp = 255;
  #   flags = IREQ_CACHE_FLUSH;
  #   ii = (inquiry_info*)malloc(max_rsp * sizeof(inquiry_info));

  #   num_rsp = hci_inquiry(dev_id, len, max_rsp, NULL, &ii, flags);
  #   if( num_rsp < 0 ) perror("hci_inquiry");

  #   for (i = 0; i < num_rsp; i++) {
  #       ba2str(&(ii+i)->bdaddr, addr);
  #       memset(name, 0, sizeof(name));
  #       if (hci_read_remote_name(sock, &(ii+i)->bdaddr, sizeof(name),
  #           name, 0) < 0)
  #       strcpy(name, "[unknown]");
  #       printf("%s  %s\n", addr, name);
  #   }

  #   free( ii );
  #   close( sock );
  #   ret

  it "scans for close by bluetooth devices" do
    dev_id = LibBlueZ.get_route(nil)
    dev = LibBlueZ.open_dev(dev_id)
    #  fun inquiry = hci_inquiry(dev_id : LibC::Int, len : LibC::Int, num_rsp : LibC::Int, lap : LibC::Int*, ii : LibC::Int**, flags : LibC::Long) : LibC::Int
    len = 8
    max_rsp = 2
    ii = Slice.new(max_rsp) { LibBlueZ::InquiryReq.new }
    ptr_ii = ii.to_unsafe
    number_of_devices = LibBlueZ.inquiry(dev_id, len, max_rsp, nil, pointerof(ptr_ii), 0)
    raise "Error scanning for devices" if number_of_devices < 0
    puts "ii: #{ptr_ii}"
    puts "devices found in scan: #{number_of_devices}"
    sleep 1
    LibBlueZ.close_dev(dev)
  end
end
