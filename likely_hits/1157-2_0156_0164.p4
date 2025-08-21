// generated from issue3307.p4

typedef bit<1> t;
        extern e {
         e();
         abstract t f(inout t a);
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
// - r_156_r_155_issue3307_F10P155S0D6M0T13.p4
// - r_164_r_155_issue3307_F10P155S0D6M0T13.p4
// =========================================
