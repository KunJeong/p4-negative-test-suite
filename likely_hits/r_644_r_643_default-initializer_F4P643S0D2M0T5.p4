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
