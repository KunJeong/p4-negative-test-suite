extern packet_in {
       }
        struct Headers {
         bool h1;
       }
        parser P(packet_in p, out Headers h)() {
         state start {
            transition select(h.h1.last.x) {
       }
          }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_827_r_816_gauntlet_parser_test_2_F10P816S0D4M1T5.p4
// =========================================
