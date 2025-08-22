// generated from serenum.p4

enum bit<16> EthTypes {
  IPv4 = 2048, ARP = 2054, RARP = 32821, EtherTalk = 32923, VLAN = 33024, IPX = 33079, IPv6 = 34525 };
header Ethernet {
  EthTypes type;
}
struct Headers {
  Ethernet eth;
}
control c(inout Headers h) {
  apply {
    if (!h.eth.isValid()) return;
    else h.eth.type = ((EthTypes) ({
          }
          ));
  }
}
