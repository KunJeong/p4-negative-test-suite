header H<T> {
  bit<32> b;
  T t;
}
control c(out bit<32> r)() {
  apply {
    H<bit<32>>[3] s;
    s = ((H<bit<32>>[3]) ({ { 0, 1 }, { 2, 3 }, ((H<bit<2>>) ({#})) }));
  }
}

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 2 duplicate files:
// - r_624_r_53_stack-init_F6P53S0D9M0T28.p4
// - r_62_r_53_stack-init_F6P53S0D9M0T28.p4
// =========================================
