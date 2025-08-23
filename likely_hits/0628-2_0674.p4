// generated from serenum.p4

enum bit<16> EthTypes {
  IPv4 = 2048,
  ARP = 2054,
};
header Ethernet {
  EthTypes type;
}
struct Headers {
  Ethernet eth;
}
control c(inout Headers h) {
  apply {
    if (!h.eth.isValid()) return;
    else h.eth.type = ((EthTypes) { });
  }
}
