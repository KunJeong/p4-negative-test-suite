// generated from stack-init.p4

header H<T> {
  bit<32> b;
  T t;
}
control c(out bit<32> r)() {
  apply {
    H<bit<0>>[3] s;
    s = (H<bit<32>>[3]) { { 0, 1 }, { 2, 3 }, (H<bit<32>>) {#} };
  }
}
