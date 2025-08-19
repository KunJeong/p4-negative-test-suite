extern packet_in {
       }
        struct Headers {
         bool h1;
       }
        parser P(packet_in p, out Headers h)() {
         state start {
            p.extract(h.h1.next);
          }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_827_r_819_gauntlet_parser_test_2_F5P819S0D9M0T28.p4
// =========================================
