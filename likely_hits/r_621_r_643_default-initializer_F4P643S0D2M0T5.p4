header H {
}
header H1 {
}
control C(out bit<32> x)() {
  H[2] stack;
  apply {
    stack = ((H1[2]) ({ ((H) ({#})), ... }));
  }
}

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_644_r_643_default-initializer_F4P643S0D2M0T5.p4
// =========================================
