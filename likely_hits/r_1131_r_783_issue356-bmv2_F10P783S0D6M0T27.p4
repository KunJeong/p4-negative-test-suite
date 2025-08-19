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
