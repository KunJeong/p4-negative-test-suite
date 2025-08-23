// generated from basic_routing-bmv2.p4

extern packet_in {
  void extract<T>(out T hdr);
  void extract<T>(out T hdr, in bit<32> variableFieldSizeInBits);
}
header ethernet_t {}
struct headers {
  ethernet_t ethernet;
}
parser ParserImpl(packet_in packet, out headers hdr)() {
  state parse_ethernet {
    packet.extract(hdr = hdr.ethernet);
  }
  state start {}
}
