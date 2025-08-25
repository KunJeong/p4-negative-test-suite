// generated from default-initializer.p4

header H {}
control C()() {
  H[2] stack;
  apply {
    stack = (H[1w2]) { (H) {#}, ... };
  }
}
