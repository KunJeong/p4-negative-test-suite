header H1 {
}
control C(out bit<32> x)() {
  apply {
    stack = ((H1[2]) ({ ((H) ({#})), ... }));
  }
}
