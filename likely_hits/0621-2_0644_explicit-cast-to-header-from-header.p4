// generated from default-initializer.p4

header H {}
header H1 {}
control C()() {
  H[2] stack;
  apply {
    stack = (H1[2]) { (H) {#}, ... };
  }
}
