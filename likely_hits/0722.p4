// generated from default-initializer.p4

 header H1 {
       }
        struct S1 {
         H1 h;
         bool b;
       }
        control C(out bit<32> x)() {
         apply {
          S1 sb = {
     b = false, h = {
    3, true, ... }
    , ... };
        }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_727_r_720_default-initializer_F10P720S0D5M0T12.p4
// =========================================
