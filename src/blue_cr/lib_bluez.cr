@[Link("bluetooth")]
lib LibBlueZ
  MAX_DEV                         =    16
  MAX_SCO_SIZE                    =   255
  MAX_EVENT_SIZE                  =   260
  DEV_REG                         =     1
  DEV_UNREG                       =     2
  DEV_UP                          =     3
  DEV_DOWN                        =     4
  DEV_SUSPEND                     =     5
  DEV_RESUME                      =     6
  VIRTUAL                         =     0
  USB                             =     1
  PCCARD                          =     2
  UART                            =     3
  RS232                           =     4
  PCI                             =     5
  SDIO                            =     6
  SPI                             =     7
  I2C                             =     8
  SMD                             =     9
  PRIMARY                         =     0
  AMP                             =     1
  COMMAND_PKT                     =     1
  ACLDATA_PKT                     =     2
  SCODATA_PKT                     =     3
  EVENT_PKT                       =     4
  VENDOR_PKT                      =   255
  A2DH1                           =     2
  A3DH1                           =     4
  DM1                             =     8
  DH1                             =    16
  A2DH3                           =   256
  A3DH3                           =   512
  DM3                             =  1024
  DH3                             =  2048
  A2DH5                           =  4096
  A3DH5                           =  8192
  DM5                             = 16384
  DH5                             = 32768
  HV1                             =    32
  HV2                             =    64
  HV3                             =   128
  EV3                             =     8
  EV4                             =    16
  EV5                             =    32
  A2EV3                           =    64
  A3EV3                           =   128
  A2EV5                           =   256
  A3EV5                           =   512
  UNKNOWN_COMMAND                 =     1
  NO_CONNECTION                   =     2
  HARDWARE_FAILURE                =     3
  PAGE_TIMEOUT                    =     4
  AUTHENTICATION_FAILURE          =     5
  PIN_OR_KEY_MISSING              =     6
  MEMORY_FULL                     =     7
  CONNECTION_TIMEOUT              =     8
  MAX_NUMBER_OF_CONNECTIONS       =     9
  MAX_NUMBER_OF_SCO_CONNECTIONS   =    10
  ACL_CONNECTION_EXISTS           =    11
  COMMAND_DISALLOWED              =    12
  REJECTED_LIMITED_RESOURCES      =    13
  REJECTED_SECURITY               =    14
  REJECTED_PERSONAL               =    15
  HOST_TIMEOUT                    =    16
  UNSUPPORTED_FEATURE             =    17
  INVALID_PARAMETERS              =    18
  OE_USER_ENDED_CONNECTION        =    19
  OE_LOW_RESOURCES                =    20
  OE_POWER_OFF                    =    21
  CONNECTION_TERMINATED           =    22
  REPEATED_ATTEMPTS               =    23
  PAIRING_NOT_ALLOWED             =    24
  UNKNOWN_LMP_PDU                 =    25
  UNSUPPORTED_REMOTE_FEATURE      =    26
  SCO_OFFSET_REJECTED             =    27
  SCO_INTERVAL_REJECTED           =    28
  AIR_MODE_REJECTED               =    29
  INVALID_LMP_PARAMETERS          =    30
  UNSPECIFIED_ERROR               =    31
  UNSUPPORTED_LMP_PARAMETER_VALUE =    32
  ROLE_CHANGE_NOT_ALLOWED         =    33
  LMP_RESPONSE_TIMEOUT            =    34
  LMP_ERROR_TRANSACTION_COLLISION =    35
  LMP_PDU_NOT_ALLOWED             =    36
  ENCRYPTION_MODE_NOT_ACCEPTED    =    37
  UNIT_LINK_KEY_USED              =    38
  QOS_NOT_SUPPORTED               =    39
  INSTANT_PASSED                  =    40
  PAIRING_NOT_SUPPORTED           =    41
  TRANSACTION_COLLISION           =    42
  QOS_UNACCEPTABLE_PARAMETER      =    44
  QOS_REJECTED                    =    45
  CLASSIFICATION_NOT_SUPPORTED    =    46
  INSUFFICIENT_SECURITY           =    47
  PARAMETER_OUT_OF_RANGE          =    48
  ROLE_SWITCH_PENDING             =    50
  SLOT_VIOLATION                  =    52
  ROLE_SWITCH_FAILED              =    53
  EIR_TOO_LARGE                   =    54
  SIMPLE_PAIRING_NOT_SUPPORTED    =    55
  HOST_BUSY_PAIRING               =    56
  LP_RSWITCH                      =     1
  LP_HOLD                         =     2
  LP_SNIFF                        =     4
  LP_PARK                         =     8
  LM_ACCEPT                       = 32768
  LM_MASTER                       =     1
  LM_AUTH                         =     2
  LM_ENCRYPT                      =     4
  LM_TRUSTED                      =     8
  LM_RELIABLE                     =    16
  LM_SECURE                       =    32
  LK_COMBINATION                  =     0
  LK_LOCAL_UNIT                   =     1
  LK_REMOTE_UNIT                  =     2
  LK_DEBUG_COMBINATION            =     3
  LK_UNAUTH_COMBINATION           =     4
  LK_AUTH_COMBINATION             =     5
  LK_CHANGED_COMBINATION          =     6
  LK_INVALID                      =   255
  QOS_CP_SIZE                     =    17
  MAX_NAME_LENGTH                 =   248
  MAX_EIR_LENGTH                  =   240
  TYPE_LEN                        =     1
  COMMAND_HDR_SIZE                =     3
  EVENT_HDR_SIZE                  =     2
  ACL_HDR_SIZE                    =     4
  SCO_HDR_SIZE                    =     3
  MSG_HDR_SIZE                    =     6
  DATA_DIR                        =     1
  FILTER                          =     2
  TIME_STAMP                      =     3
  CMSG_DIR                        =     1
  CMSG_TSTAMP                     =     2
  DEV_NONE                        = 65535
  CHANNEL_RAW                     =     0
  CHANNEL_USER                    =     1
  CHANNEL_MONITOR                 =     2
  CHANNEL_CONTROL                 =     3
  CHANNEL_LOGGING                 =     4
  FLT_TYPE_BITS                   =    31
  FLT_EVENT_BITS                  =    63
  FLT_OGF_BITS                    =    63
  FLT_OCF_BITS                    =   127
  SECURITY                        =     4
  SECURITY_SDP                    =     0
  SECURITY_LOW                    =     1
  SECURITY_MEDIUM                 =     2
  SECURITY_HIGH                   =     3
  SECURITY_FIPS                   =     4
  DEFER_SETUP                     =     7
  FLUSHABLE                       =     8
  FLUSHABLE_OFF                   =     0
  FLUSHABLE_ON                    =     1
  POWER                           =     9
  POWER_FORCE_ACTIVE_OFF          =     0
  POWER_FORCE_ACTIVE_ON           =     1
  CHANNEL_POLICY                  =    10
  CHANNEL_POLICY_BREDR_ONLY       =     0
  CHANNEL_POLICY_BREDR_PREFERRED  =     1
  CHANNEL_POLICY_AMP_PREFERRED    =     2
  VOICE                           =    11
  SNDMTU                          =    12
  RCVMTU                          =    13
  VOICE_TRANSPARENT               =     3
  VOICE_CVSD_16BIT                =    96

  struct Request
    ogf : LibC::Int
    ocf : LibC::Int
    event : LibC::Int
    cparam : Void*
    clen : LibC::Int
    rparam : Void*
    rlen : LibC::Int
  end

  struct Version
    manufacturer : LibC::Int
    ver : LibC::Int
    rev : LibC::Int
    lmp_ver : LibC::Int
    lmp_subver : LibC::Int
  end

  fun open_dev = hci_open_dev(dev_id : LibC::Int) : LibC::Int
  fun close_dev = hci_close_dev(dd : LibC::Int) : LibC::Int
  fun send_cmd = hci_send_cmd(dd : LibC::Int, ogf : LibC::Int, ocf : LibC::Int, plen : LibC::Int, param : Void*) : LibC::Int
  fun send_req = hci_send_req(dd : LibC::Int, req : Request*, timeout : LibC::Int) : LibC::Int
  fun create_connection = hci_create_connection(dd : LibC::Int, bdaddr : LibC::Int*, ptype : LibC::Int, clkoffset : LibC::Int, rswitch : LibC::Int, handle : LibC::Int*, to : LibC::Int) : LibC::Int
  fun disconnect = hci_disconnect(dd : LibC::Int, handle : LibC::Int, reason : LibC::Int, to : LibC::Int) : LibC::Int
  fun inquiry = hci_inquiry(dev_id : LibC::Int, len : LibC::Int, num_rsp : LibC::Int, lap : LibC::Int*, ii : InquiryReq**, flags : LibC::Long) : LibC::Int
  fun devinfo = hci_devinfo(dev_id : LibC::Int, di : Void*) : LibC::Int
  fun devba = hci_devba(dev_id : LibC::Int, bdaddr : LibC::Int*) : LibC::Int
  fun devid = hci_devid(str : LibC::Char*) : LibC::Int
  fun read_local_name = hci_read_local_name(dd : LibC::Int, len : LibC::Int, name : LibC::Char*, to : LibC::Int) : LibC::Int
  fun write_local_name = hci_write_local_name(dd : LibC::Int, name : LibC::Char*, to : LibC::Int) : LibC::Int
  fun read_remote_name = hci_read_remote_name(dd : LibC::Int, bdaddr : LibC::Int*, len : LibC::Int, name : LibC::Char*, to : LibC::Int) : LibC::Int
  fun read_remote_name_with_clock_offset = hci_read_remote_name_with_clock_offset(dd : LibC::Int, bdaddr : LibC::Int*, pscan_rep_mode : LibC::Int, clkoffset : LibC::Int, len : LibC::Int, name : LibC::Char*, to : LibC::Int) : LibC::Int
  fun read_remote_name_cancel = hci_read_remote_name_cancel(dd : LibC::Int, bdaddr : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_remote_version = hci_read_remote_version(dd : LibC::Int, handle : LibC::Int, ver : Version*, to : LibC::Int) : LibC::Int
  fun read_remote_features = hci_read_remote_features(dd : LibC::Int, handle : LibC::Int, features : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_remote_ext_features = hci_read_remote_ext_features(dd : LibC::Int, handle : LibC::Int, page : LibC::Int, max_page : LibC::Int*, features : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_clock_offset = hci_read_clock_offset(dd : LibC::Int, handle : LibC::Int, clkoffset : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_local_version = hci_read_local_version(dd : LibC::Int, ver : Version*, to : LibC::Int) : LibC::Int
  fun read_local_commands = hci_read_local_commands(dd : LibC::Int, commands : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_local_features = hci_read_local_features(dd : LibC::Int, features : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_local_ext_features = hci_read_local_ext_features(dd : LibC::Int, page : LibC::Int, max_page : LibC::Int*, features : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_bd_addr = hci_read_bd_addr(dd : LibC::Int, bdaddr : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_class_of_dev = hci_read_class_of_dev(dd : LibC::Int, cls : LibC::Int*, to : LibC::Int) : LibC::Int
  fun write_class_of_dev = hci_write_class_of_dev(dd : LibC::Int, cls : LibC::Int, to : LibC::Int) : LibC::Int
  fun read_voice_setting = hci_read_voice_setting(dd : LibC::Int, vs : LibC::Int*, to : LibC::Int) : LibC::Int
  fun write_voice_setting = hci_write_voice_setting(dd : LibC::Int, vs : LibC::Int, to : LibC::Int) : LibC::Int
  fun read_current_iac_lap = hci_read_current_iac_lap(dd : LibC::Int, num_iac : LibC::Int*, lap : LibC::Int*, to : LibC::Int) : LibC::Int
  fun write_current_iac_lap = hci_write_current_iac_lap(dd : LibC::Int, num_iac : LibC::Int, lap : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_stored_link_key = hci_read_stored_link_key(dd : LibC::Int, bdaddr : LibC::Int*, all : LibC::Int, to : LibC::Int) : LibC::Int
  fun write_stored_link_key = hci_write_stored_link_key(dd : LibC::Int, bdaddr : LibC::Int*, key : LibC::Int*, to : LibC::Int) : LibC::Int
  fun delete_stored_link_key = hci_delete_stored_link_key(dd : LibC::Int, bdaddr : LibC::Int*, all : LibC::Int, to : LibC::Int) : LibC::Int
  fun authenticate_link = hci_authenticate_link(dd : LibC::Int, handle : LibC::Int, to : LibC::Int) : LibC::Int
  fun encrypt_link = hci_encrypt_link(dd : LibC::Int, handle : LibC::Int, encrypt : LibC::Int, to : LibC::Int) : LibC::Int
  fun change_link_key = hci_change_link_key(dd : LibC::Int, handle : LibC::Int, to : LibC::Int) : LibC::Int
  fun switch_role = hci_switch_role(dd : LibC::Int, bdaddr : LibC::Int*, role : LibC::Int, to : LibC::Int) : LibC::Int
  fun park_mode = hci_park_mode(dd : LibC::Int, handle : LibC::Int, max_interval : LibC::Int, min_interval : LibC::Int, to : LibC::Int) : LibC::Int
  fun exit_park_mode = hci_exit_park_mode(dd : LibC::Int, handle : LibC::Int, to : LibC::Int) : LibC::Int
  fun read_inquiry_scan_type = hci_read_inquiry_scan_type(dd : LibC::Int, type : LibC::Int*, to : LibC::Int) : LibC::Int
  fun write_inquiry_scan_type = hci_write_inquiry_scan_type(dd : LibC::Int, type : LibC::Int, to : LibC::Int) : LibC::Int
  fun read_inquiry_mode = hci_read_inquiry_mode(dd : LibC::Int, mode : LibC::Int*, to : LibC::Int) : LibC::Int
  fun write_inquiry_mode = hci_write_inquiry_mode(dd : LibC::Int, mode : LibC::Int, to : LibC::Int) : LibC::Int
  fun read_afh_mode = hci_read_afh_mode(dd : LibC::Int, mode : LibC::Int*, to : LibC::Int) : LibC::Int
  fun write_afh_mode = hci_write_afh_mode(dd : LibC::Int, mode : LibC::Int, to : LibC::Int) : LibC::Int
  fun read_ext_inquiry_response = hci_read_ext_inquiry_response(dd : LibC::Int, fec : LibC::Int*, data : LibC::Int*, to : LibC::Int) : LibC::Int
  fun write_ext_inquiry_response = hci_write_ext_inquiry_response(dd : LibC::Int, fec : LibC::Int, data : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_simple_pairing_mode = hci_read_simple_pairing_mode(dd : LibC::Int, mode : LibC::Int*, to : LibC::Int) : LibC::Int
  fun write_simple_pairing_mode = hci_write_simple_pairing_mode(dd : LibC::Int, mode : LibC::Int, to : LibC::Int) : LibC::Int
  fun read_local_oob_data = hci_read_local_oob_data(dd : LibC::Int, hash : LibC::Int*, randomizer : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_inq_response_tx_power_level = hci_read_inq_response_tx_power_level(dd : LibC::Int, level : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_inquiry_transmit_power_level = hci_read_inquiry_transmit_power_level(dd : LibC::Int, level : LibC::Int*, to : LibC::Int) : LibC::Int
  fun write_inquiry_transmit_power_level = hci_write_inquiry_transmit_power_level(dd : LibC::Int, level : LibC::Int, to : LibC::Int) : LibC::Int
  fun read_transmit_power_level = hci_read_transmit_power_level(dd : LibC::Int, handle : LibC::Int, type : LibC::Int, level : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_link_policy = hci_read_link_policy(dd : LibC::Int, handle : LibC::Int, policy : LibC::Int*, to : LibC::Int) : LibC::Int
  fun write_link_policy = hci_write_link_policy(dd : LibC::Int, handle : LibC::Int, policy : LibC::Int, to : LibC::Int) : LibC::Int
  fun read_link_supervision_timeout = hci_read_link_supervision_timeout(dd : LibC::Int, handle : LibC::Int, timeout : LibC::Int*, to : LibC::Int) : LibC::Int
  fun write_link_supervision_timeout = hci_write_link_supervision_timeout(dd : LibC::Int, handle : LibC::Int, timeout : LibC::Int, to : LibC::Int) : LibC::Int
  fun set_afh_classification = hci_set_afh_classification(dd : LibC::Int, map : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_link_quality = hci_read_link_quality(dd : LibC::Int, handle : LibC::Int, link_quality : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_rssi = hci_read_rssi(dd : LibC::Int, handle : LibC::Int, rssi : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_afh_map = hci_read_afh_map(dd : LibC::Int, handle : LibC::Int, mode : LibC::Int*, map : LibC::Int*, to : LibC::Int) : LibC::Int
  fun read_clock = hci_read_clock(dd : LibC::Int, handle : LibC::Int, which : LibC::Int, clock : LibC::Int*, accuracy : LibC::Int*, to : LibC::Int) : LibC::Int
  fun le_set_scan_enable = hci_le_set_scan_enable(dev_id : LibC::Int, enable : LibC::Int, filter_dup : LibC::Int, to : LibC::Int) : LibC::Int
  fun le_set_scan_parameters = hci_le_set_scan_parameters(dev_id : LibC::Int, type : LibC::Int, interval : LibC::Int, window : LibC::Int, own_type : LibC::Int, filter : LibC::Int, to : LibC::Int) : LibC::Int
  fun le_set_advertise_enable = hci_le_set_advertise_enable(dev_id : LibC::Int, enable : LibC::Int, to : LibC::Int) : LibC::Int
  fun le_create_conn = hci_le_create_conn(dd : LibC::Int, interval : LibC::Int, window : LibC::Int, initiator_filter : LibC::Int, peer_bdaddr_type : LibC::Int, peer_bdaddr : LibC::Int, own_bdaddr_type : LibC::Int, min_interval : LibC::Int, max_interval : LibC::Int, latency : LibC::Int, supervision_timeout : LibC::Int, min_ce_length : LibC::Int, max_ce_length : LibC::Int, handle : LibC::Int*, to : LibC::Int) : LibC::Int
  fun le_conn_update = hci_le_conn_update(dd : LibC::Int, handle : LibC::Int, min_interval : LibC::Int, max_interval : LibC::Int, latency : LibC::Int, supervision_timeout : LibC::Int, to : LibC::Int) : LibC::Int
  fun le_add_white_list = hci_le_add_white_list(dd : LibC::Int, bdaddr : LibC::Int*, type : LibC::Int, to : LibC::Int) : LibC::Int
  fun le_rm_white_list = hci_le_rm_white_list(dd : LibC::Int, bdaddr : LibC::Int*, type : LibC::Int, to : LibC::Int) : LibC::Int
  fun le_read_white_list_size = hci_le_read_white_list_size(dd : LibC::Int, size : LibC::Int*, to : LibC::Int) : LibC::Int
  fun le_clear_white_list = hci_le_clear_white_list(dd : LibC::Int, to : LibC::Int) : LibC::Int
  fun le_add_resolving_list = hci_le_add_resolving_list(dd : LibC::Int, bdaddr : LibC::Int*, type : LibC::Int, peer_irk : LibC::Int*, local_irk : LibC::Int*, to : LibC::Int) : LibC::Int
  fun le_rm_resolving_list = hci_le_rm_resolving_list(dd : LibC::Int, bdaddr : LibC::Int*, type : LibC::Int, to : LibC::Int) : LibC::Int
  fun le_clear_resolving_list = hci_le_clear_resolving_list(dd : LibC::Int, to : LibC::Int) : LibC::Int
  fun le_read_resolving_list_size = hci_le_read_resolving_list_size(dd : LibC::Int, size : LibC::Int*, to : LibC::Int) : LibC::Int
  fun le_set_address_resolution_enable = hci_le_set_address_resolution_enable(dev_id : LibC::Int, enable : LibC::Int, to : LibC::Int) : LibC::Int
  fun le_read_remote_features = hci_le_read_remote_features(dd : LibC::Int, handle : LibC::Int, features : LibC::Int*, to : LibC::Int) : LibC::Int
  fun for_each_dev = hci_for_each_dev(flag : LibC::Int, func : (LibC::Int, LibC::Int, LibC::Long -> LibC::Int), arg : LibC::Long) : LibC::Int
  fun get_route = hci_get_route(bdaddr : LibC::Int*) : LibC::Int
  fun bustostr = hci_bustostr(bus : LibC::Int) : LibC::Char*
  fun typetostr = hci_typetostr(type : LibC::Int) : LibC::Char*
  fun dtypetostr = hci_dtypetostr(type : LibC::Int) : LibC::Char*
  fun dflagstostr = hci_dflagstostr(flags : LibC::Int) : LibC::Char*
  fun ptypetostr = hci_ptypetostr(ptype : LibC::UInt) : LibC::Char*
  fun strtoptype = hci_strtoptype(str : LibC::Char*, val : LibC::UInt*) : LibC::Int
  fun scoptypetostr = hci_scoptypetostr(ptype : LibC::UInt) : LibC::Char*
  fun strtoscoptype = hci_strtoscoptype(str : LibC::Char*, val : LibC::UInt*) : LibC::Int
  fun lptostr = hci_lptostr(ptype : LibC::UInt) : LibC::Char*
  fun strtolp = hci_strtolp(str : LibC::Char*, val : LibC::UInt*) : LibC::Int
  fun lmtostr = hci_lmtostr(ptype : LibC::UInt) : LibC::Char*
  fun strtolm = hci_strtolm(str : LibC::Char*, val : LibC::UInt*) : LibC::Int
  fun cmdtostr = hci_cmdtostr(cmd : LibC::UInt) : LibC::Char*
  fun commandstostr = hci_commandstostr(commands : LibC::Int*, pref : LibC::Char*, width : LibC::Int) : LibC::Char*
  fun vertostr = hci_vertostr(ver : LibC::UInt) : LibC::Char*
  fun strtover = hci_strtover(str : LibC::Char*, ver : LibC::UInt*) : LibC::Int
  fun set_bit = hci_set_bit(nr : LibC::Int, addr : Void*)
  fun clear_bit = hci_clear_bit(nr : LibC::Int, addr : Void*)
  fun test_bit = hci_test_bit(nr : LibC::Int, addr : Void*) : LibC::Int
  fun filter_clear = hci_filter_clear(f : Void*)
  fun filter_set_ptype = hci_filter_set_ptype(t : LibC::Int, f : Void*)
  fun filter_clear_ptype = hci_filter_clear_ptype(t : LibC::Int, f : Void*)
  fun filter_test_ptype = hci_filter_test_ptype(t : LibC::Int, f : Void*) : LibC::Int
  fun filter_all_ptypes = hci_filter_all_ptypes(f : Void*)
  fun filter_set_event = hci_filter_set_event(e : LibC::Int, f : Void*)
  fun filter_clear_event = hci_filter_clear_event(e : LibC::Int, f : Void*)
  fun filter_test_event = hci_filter_test_event(e : LibC::Int, f : Void*) : LibC::Int
  fun filter_all_events = hci_filter_all_events(f : Void*)
  fun filter_set_opcode = hci_filter_set_opcode(opcode : LibC::Int, f : Void*)
  fun filter_clear_opcode = hci_filter_clear_opcode(f : Void*)
  fun filter_test_opcode = hci_filter_test_opcode(opcode : LibC::Int, f : Void*) : LibC::Int
  Up      = 0
  Init    = 1
  Running = 2
  Pscan   = 3
  Iscan   = 4
  Auth    = 5
  Encrypt = 6
  Inquiry = 7
  Raw     = 8

  struct Filter
    type_mask : LibC::Int
    event_mask : LibC::Int[2]
    opcode : LibC::Int
  end

  struct DevStats
    err_rx : LibC::Int
    err_tx : LibC::Int
    cmd_tx : LibC::Int
    evt_rx : LibC::Int
    acl_tx : LibC::Int
    acl_rx : LibC::Int
    sco_tx : LibC::Int
    sco_rx : LibC::Int
    byte_rx : LibC::Int
    byte_tx : LibC::Int
  end

  struct DevInfo
    dev_id : LibC::Int
    name : LibC::Char[8]
    bdaddr : LibC::Int
    flags : LibC::Int
    type : LibC::Int
    features : LibC::Int[8]
    pkt_type : LibC::Int
    link_policy : LibC::Int
    link_mode : LibC::Int
    acl_mtu : LibC::Int
    acl_pkts : LibC::Int
    sco_mtu : LibC::Int
    sco_pkts : LibC::Int
    stat : DevStats
  end

  struct ConnInfo
    handle : LibC::Int
    bdaddr : LibC::Int
    type : LibC::Int
    out : LibC::Int
    state : LibC::Int
    link_mode : LibC::Int
  end

  struct DevReq
    dev_id : LibC::Int
    dev_opt : LibC::Int
  end

  struct DevListReq
    dev_num : LibC::Int
    dev_req : DevReq[0]
  end

  struct ConnListReq
    dev_id : LibC::Int
    conn_num : LibC::Int
    conn_info : ConnInfo[0]
  end

  struct ConnInfoReq
    bdaddr : LibC::Int
    type : LibC::Int
    conn_info : ConnInfo[0]
  end

  struct AuthInfoReq
    bdaddr : LibC::Int
    type : LibC::Int
  end

  struct InquiryReq
    dev_id : LibC::Int
    flags : LibC::Int
    lap : LibC::Int[3]
    length : LibC::Int
    num_rsp : LibC::Int
  end

  struct Security
    level : Uint8T
    key_size : Uint8T
  end

  alias X__Uint8T = UInt8
  alias Uint8T = X__Uint8T

  struct Power
    force_active : Uint8T
  end

  struct Voice
    setting : Uint16T
  end

  alias X__Uint16T = LibC::UShort
  alias Uint16T = X__Uint16T
  Connected = 1
  Open      = 2
  Bound     = 3
  Listen    = 4
  Connect   = 5
  Connect2  = 6
  Config    = 7
  Disconn   = 8
  Closed    = 9
  fun get_le64 = bt_get_le64(ptr : Void*) : Uint64T
  alias X__Uint64T = LibC::ULong
  alias Uint64T = X__Uint64T
  fun get_be64 = bt_get_be64(ptr : Void*) : Uint64T
  fun get_le32 = bt_get_le32(ptr : Void*) : Uint32T
  alias X__Uint32T = LibC::UInt
  alias Uint32T = X__Uint32T
  fun get_be32 = bt_get_be32(ptr : Void*) : Uint32T
  fun get_le16 = bt_get_le16(ptr : Void*) : Uint16T
  fun get_be16 = bt_get_be16(ptr : Void*) : Uint16T
  fun put_le64 = bt_put_le64(val : Uint64T, ptr : Void*)
  fun put_be64 = bt_put_be64(val : Uint64T, ptr : Void*)
  fun put_le32 = bt_put_le32(val : Uint32T, ptr : Void*)
  fun put_be32 = bt_put_be32(val : Uint32T, ptr : Void*)
  fun put_le16 = bt_put_le16(val : Uint16T, ptr : Void*)
  fun put_be16 = bt_put_be16(val : Uint16T, ptr : Void*)
  fun malloc = bt_malloc(size : LibC::Int) : Void*
  fun free = bt_free(ptr : Void*)
  fun error = bt_error(code : Uint16T) : LibC::Int
  fun compidtostr = bt_compidtostr(id : LibC::Int) : LibC::Char*
end
