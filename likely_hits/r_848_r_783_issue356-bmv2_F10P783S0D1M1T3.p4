extern packet_in {
         T lookahead<T>();
       }
        struct standard_metadata_t {
       }
        struct H {
       }
        struct M {
       }
        parser parserI0() {
         state start {
            transition select(pkt.lookahead<bit<112>>()[111:96]) {
         0: accept;
       }
          }
       }
