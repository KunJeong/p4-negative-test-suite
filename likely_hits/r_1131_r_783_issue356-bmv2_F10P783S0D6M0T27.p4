extern packet_in {
         T lookahead<T>();
       }
        struct standard_metadata_t {
       }
        struct H {
       }
        struct M {
       }
        parser parserI(packet_in pkt, out H hdr, inout M meta, inout standard_metadata_t stdmeta) {
         state start {
            transition select(pkt.lookahead<bit<112>>()[111:96]) {
         (16w4096 &&& 16w4096, 16w4096 &&& 16w4096): accept;
       }
          }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_1134_r_783_issue356-bmv2_F10P783S0D6M0T27.p4
// =========================================
