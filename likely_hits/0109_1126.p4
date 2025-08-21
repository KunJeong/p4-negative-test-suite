// generated from issue3343.p4

parser MyParser10() {
         value_set<bit<6>>(4) myvs;
         state start {
            transition select() {
         (myvs): accept;
       }
          }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_1126_r_1130_issue3343_F9P1130S0D5M1T19.p4
// =========================================
