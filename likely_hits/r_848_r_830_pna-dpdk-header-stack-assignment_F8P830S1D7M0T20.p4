 extern packet_in {
   void extract<T>(out T hdr);
   void extract<T>(out T variableSizeHeader, in bit<32> variableFieldSizeInBits);
   T lookahead<T>();
   void advance(in bit<32> sizeInBits);
   bit<32> length();
 }
  typedef bit<32> PortIdUint_t;
  typedef bit<3> PassNumberUint_t;
  type PortIdUint_t PortId_t;
  type PassNumberUint_t PassNumber_t;
  enum PNA_Direction_t {
   NET_TO_HOST,   HOST_TO_NET };
  struct pna_main_parser_input_metadata_t {
   PNA_Direction_t direction;
   PassNumber_t pass;
   bool loopedback;
   PortId_t input_port;
 }
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
   bit<16> dport;
   bit<32> seqno;
   bit<16> csum;
   bit<16> urgptr;
 }
  struct parsed_headers_t {
   eth_t mac;
   ipv4_t[((3) + (1))] ipv4;
   udp_t udp;
   tcp_t tcp;
 }
  struct user_meta_t {
   bit<16> L2_packet_len_bytes;
 }
  parser MainParserImpl(packet_in pkt, out parsed_headers_t hdrs, inout user_meta_t umeta, in pna_main_parser_input_metadata_t istd)() {
   state start {       pkt.extract(hdrs.mac);       transition select(hdrs.mac.type) {     (ETYPE_IPV4): Parse_IPv4_Depth0;     (default): accept;   }     }
   state Parse_IPv4_Depth0 {       pkt.extract(hdrs.ipv4[0]);       transition select(hdrs.ipv4[0].protocol) {     (IP_PROTO_IPV4): Parse_IPv4_Depth1;     (IP_PROTO_UDP): Parse_UDP;     (IP_PROTO_TCP): Parse_TCP;     (default): accept;   }     }
   state Parse_IPv4_Depth1 {       pkt.extract(hdrs.ipv4[1]);       transition select(hdrs.ipv4[1].protocol) {     (IP_PROTO_IPV4): Parse_IPv4_Depth2;     (IP_PROTO_UDP): Parse_UDP;     (IP_PROTO_TCP): Parse_TCP;     (default): accept;   }     }
   state Parse_IPv4_Depth2 {       pkt.extract(hdrs.ipv4[2]);       transition select(hdrs.ipv4[2].protocol) {     (IP_PROTO_UDP): Parse_UDP;     (IP_PROTO_TCP): Parse_TCP;     (default): accept;   }     }
   state Parse_TCP {       pkt.extract(hdrs.tcp);       transition accept;     }
   state Parse_UDP {       pkt.extract(hdrs.udp);       transition accept;     }
 }
