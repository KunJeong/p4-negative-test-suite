header H<T> {
}
control c(out bit<32> r)() {
  apply {
    H<bit<32>>[3] s;
    s = ((H<bit<32>>[-2]) ({ { 0, 1 }, { 2, 3 }, ((H<bit<32>>) ({#})) }));
  }
}

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_781_r_53_stack-init_F10P53S0D7M0T17.p4
// =========================================
