// generated from stack-init.p4

header H<T> {
  bit<32> b;
  T t;
}
control c(out bit<32> r)() {
  apply {
    H<bit<0>>[3] s;
    s = ((H<bit<32>>[3]) ({ { 0, 1 }, { 2, 3 }, ((H<bit<32>>) ({#})) }));
  }
}

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_62_r_53_stack-init_F9P53S0D2M0T18.p4
// =========================================
