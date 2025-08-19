// generated from stack2.p4

header h {}
control c(out bit<32> x)() {
  apply {
    h["fox"] stack;
  }
}
