// generated from default-initializer.p4

header H {}
control C()() {
  H[0] stack;
  apply {
    H h = ...;
    stack = { h, ... };
  }
}
