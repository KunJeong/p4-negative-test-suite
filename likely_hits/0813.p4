// generated from gauntlet_parser_test.p4

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

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_827_r_812_gauntlet_parser_test_4_F10P812S0D5M0T8.p4
// =========================================
