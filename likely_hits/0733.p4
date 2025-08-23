// generated from default-initializer.p4

header H {
  bit<32> b;
}
control C()() {
  apply {
    H h = { b = "S1", ... };
  }
}
