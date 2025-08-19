extern packet_in {
       }
        struct Headers {
         bool h1;
       }
        parser P(packet_in p, out Headers h) {
         state start {
            transition select(h.h1.lastIndex) {
       }
          }
       }
