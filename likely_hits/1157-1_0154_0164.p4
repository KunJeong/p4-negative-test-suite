// generated from issue3307.p4

typedef bit<1> t;
        extern e {
         e();
         abstract int f(in t a);
       }
        parser MyParser0() {
         e() ee = {
          t f(in t a) {
           return a;
         }
        };
         state start {
          }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 2 duplicate files:
// - r_154_r_155_issue3307_F10P155S0D4M1T27.p4
// - r_164_r_155_issue3307_F10P155S0D4M1T27.p4
// =========================================
