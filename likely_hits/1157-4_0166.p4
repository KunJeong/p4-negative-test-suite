// generated from issue3307.p4

typedef bit<1> t;
        extern e {
         e();
         abstract t f<f, reject>(in t a);
       }
        parser MyParser0() {
         e() ee = {
          t f(in t a) {
           return a;
         }
        };
         state start {}
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_166_r_166_issue3307_F9P166S0D4M0T27.p4
// =========================================
