header H {
       varbit<32> b;
     }
      control C(out bit<32> x)() {
       apply {
        H h8 = ((H) ({
   b = 2, ... }
   ));
      }
     }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_662_r_661_default-initializer_F10P661S0D1M0T2.p4
// =========================================
