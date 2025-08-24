// generated from pna-dpdk-header-stack-assignment.p4

typedef bit<32> PortIdUint_t;
type PortIdUint_t PortId_t;
typedef error ParserError_t;
header eth_t {
  bit<16> type;
}
struct parsed_headers_t {
  eth_t mac;
}
control MainControlImpl(inout parsed_headers_t hdrs)() {
  action encap_one_tunnel_layer_ipv4(bit<48> mac_da) {
    hdrs.mac.type = .ParserError_t.mac_da;
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
  apply {}
}
