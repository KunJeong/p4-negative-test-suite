// generated from select-struct.p4

parser p()() {
         state start {
            bit<8> x = 5;
            transition select(x, x, ..., x) {
         (0, 0, {
    0, 0 }
    , 0): accept;
       }
          }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_95_r_699_select-struct_F10P699S0D1M1T26.p4
// =========================================
