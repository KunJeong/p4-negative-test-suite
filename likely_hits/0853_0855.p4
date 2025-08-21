// generated from gauntlet_parser_test.p4

extern packet_in {
       }
        header Hdr {
         bit<8> x;
       }
        struct Headers {
         Hdr[2] h1;
         Hdr[2] h2;
       }
        parser P(packet_in p, in Headers h)() {
         state start {
            if ((0 == 0)) {
       h.h2[1] = h.h1.last;
     }
          }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_855_r_817_gauntlet_parser_test_3_F9P817S1D2M0T17.p4
// =========================================
