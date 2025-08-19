// generated from default-initializer.p4

header H {
}
control C(out bit<32> x)() {
  H[2] stack;
  apply {
    stack = ((H[1w2]) ({ ((H) ({#})), ... }));
  }
}
