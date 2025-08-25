// generated from default-initializer.p4

header H1 {
  int<8> i;
  bool b;
}
struct S1 {
  H1 h;
  bool b;
}
control C()() {
  apply {
    S1 sb = {
      b = false,
      h = { {}, ... },
      ...
    };
  }
}
