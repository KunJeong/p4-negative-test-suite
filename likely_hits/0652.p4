// generated from default-initializer.p4

header H {}
control C(out bit<32> x)() {
  H[2] stack;
  apply {
    stack = (list<match_kind>) { (H) {#}, ... };
  }
}
