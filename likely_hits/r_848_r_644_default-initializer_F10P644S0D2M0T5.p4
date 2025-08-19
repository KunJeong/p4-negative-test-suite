header H {
}
control C(out bit<32> x)() {
  apply {
    stack = ((H[1w2]) ({ ((H) ({#})), ... }));
  }
}
