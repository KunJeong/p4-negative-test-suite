// generated from gauntlet_parser_test.p4

extern packet_in {
       }
        struct Headers {
         tuple<> h1;
       }
        parser P(packet_in p, out Headers h) {
         state start {
            transition select(h.h1.lastIndex) {
       }
          }
       }
