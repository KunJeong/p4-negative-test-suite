// generated from inverted-range.p4

parser p(in bit<16> x)() {
         state start {
            transition select(x) {
         (4w2 .. 0): accept;
       }
          }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_1126_r_785_inverted-range_F10P785S0D0M0T14.p4
// =========================================
