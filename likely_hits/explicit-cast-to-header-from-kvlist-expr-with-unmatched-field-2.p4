// generated from struct_init-1.p4

header H {
  bit<32> b;
}
control I()() {
  apply {
    H h = { b = 1 };
    if (h == (H) { lazy = 1 }) h = { b = 2 };
  }
}
