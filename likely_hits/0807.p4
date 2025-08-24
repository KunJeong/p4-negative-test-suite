// generated from pna-dpdk-header-stack-assignment.p4

typedef bit<32> PortIdUint_t;
typedef bit<8> ClassOfServiceUint_t;
typedef bit<64> TimestampUint_t;
typedef bit<3> PassNumberUint_t;
type PortIdUint_t PortId_t;
type ClassOfServiceUint_t ClassOfService_t;
type TimestampUint_t Timestamp_t;
type PassNumberUint_t PassNumber_t;
typedef error ParserError_t;
enum PNA_Direction_t {
  NET_TO_HOST,
  HOST_TO_NET
};
header eth_t {
  bit<48> da;
  bit<48> sa;
  bit<16> type;
}
header ipv4_t {
  bit<4> version;
  bit<4> ihl;
  bit<6> dscp;
  bit<2> ecn;
  bit<16> length;
  bit<16> identification;
  bit<1> rsvd;
  bit<1> df;
  bit<1> mf;
  bit<13> frag_off;
  bit<8> ttl;
  bit<8> protocol;
  bit<16> csum;
  bit<32> src_ip;
  bit<32> dst_ip;
}
header udp_t {
  bit<16> sport;
  bit<16> dport;
  bit<16> length;
  bit<16> csum;
}
header tcp_t {
  bit<16> sport;
  bit<1> fin;
  bit<16> window;
  bit<16> csum;
  bit<16> urgptr;
}
struct parsed_headers_t {
  eth_t mac;
  ipv4_t[3 + 1] ipv4;
  udp_t udp;
  tcp_t tcp;
}
struct user_meta_t {
  bit<16> L2_packet_len_bytes;
}
control MainControlImpl(inout parsed_headers_t hdrs, inout user_meta_t umeta)() {
  action encap_one_tunnel_layer_ipv4(bit<48> mac_da, bit<48> mac_sa, bit<32> ipv4_sa, bit<32> ipv4_da) {
    hdrs.ipv4[3] = hdrs.ipv4[2];
    hdrs.ipv4[2] = hdrs.ipv4[1];
    hdrs.ipv4[1] = hdrs.ipv4[0];
    hdrs.ipv4[0].setInvalid();
    hdrs.mac.da = mac_da;
    hdrs.mac.sa = mac_sa;
    hdrs.mac.type = .ParserError_t.mac_da;
    hdrs.ipv4[0].setValid();
    hdrs.ipv4[0].version = 4;
    hdrs.ipv4[0].ihl = 5;
    hdrs.ipv4[0].dscp = 5;
    hdrs.ipv4[0].ecn = 0;
    hdrs.ipv4[0].length = hdrs.ipv4[0].maxSizeInBytes() + umeta.L2_packet_len_bytes;
    hdrs.ipv4[0].identification = 0;
    hdrs.ipv4[0].rsvd = 0;
    hdrs.ipv4[0].df = 0;
    hdrs.ipv4[0].mf = 0;
    hdrs.ipv4[0].frag_off = 0;
    hdrs.ipv4[0].ttl = 64;
    hdrs.ipv4[0].protocol = IP_PROTO_IPV4;
    hdrs.ipv4[0].csum = 0;
    hdrs.ipv4[0].src_ip = ipv4_sa;
    hdrs.ipv4[0].dst_ip = ipv4_da;
  }
  table header_mod {
    key = {
      hdrs.mac.da : exact;
    }
    actions = {
      encap_one_tunnel_layer_ipv4;
      NoAction;
    }
    const default_action = NoAction;
  }
  apply {
    if (hdrs.mac.isValid()) {
      header_mod.apply();
    }
    send_to_port((PortId_t) 1);
  }
}
