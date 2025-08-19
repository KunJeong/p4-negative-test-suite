control c(inout bit<8> val)(int a) {
        apply {
    }
      }
       control ingress(inout bit<8> a)() {
        c(0) x;
        apply {
         x.apply();
       }
      }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_1090_r_1035_issue2335-1_F10P1035S0D1M0T24.p4
// =========================================
