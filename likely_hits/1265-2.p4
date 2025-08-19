// generated from issue1386.p4

extern packet_in {
    void extract<T>(out T hdr);
  }
   extern packet_out {
    void emit<T>(in T hdr);
  }
   struct standard_metadata_t {
    bit<9> egress_spec;
  }
   parser Parser<H, M>(packet_in b, out H parsedHdr, inout M meta, inout standard_metadata_t standard_metadata);
   control VerifyChecksum<H, M>(inout H hdr, inout M meta);
   control Ingress<H, M>(inout H hdr, inout M meta, inout standard_metadata_t standard_metadata);
   control Egress<H, M>(inout H hdr, inout M meta, inout standard_metadata_t standard_metadata);
   control ComputeChecksum<H, M>(inout H hdr, inout M meta);
   control Deparser<H>(packet_out b, in H hdr);
   package V1Switch<H, M>(Parser<H, M> p, VerifyChecksum<H, M> vr, Ingress<H, M> ig, Egress<H, M> eg, ComputeChecksum<H, M> ck, Deparser<H> dep);
   header hdr {
  }
   control compute(inout hdr h)() {
    bit<8> n = 0;
    apply {
     if (!h.isValid()) {   return; }
     if (((n) > (0))) {   h.setValid(); }
   }
  }
   struct Headers {
  }
   struct Meta {
  }
   parser p(packet_in b, out Headers h, inout Meta m, inout standard_metadata_t sm)() {
    state start {
     }
  }
   control vrfy(inout Headers h, inout Meta m)() {
    apply {
}
  }
   control update(inout Headers h, inout Meta m)() {
    apply {
}
  }
   control egress(inout Headers h, inout Meta m, inout standard_metadata_t sm)() {
    apply {
}
  }
   control deparser(packet_out b, in Headers h)() {
    apply {
   }
  }
   control ingress(inout Meta m, inout Headers h, inout standard_metadata_t sm)() {
    apply {
   }
  }
   V1Switch(p(), vrfy(), ingress(), egress(), update(), deparser()) main;

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_59_r_1266_issue1386_F5P1266S1D8M0T16.p4
// =========================================
