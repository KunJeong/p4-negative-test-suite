// generated from default-initializer.p4

header H {
      bit<32> b;
    }
     control C(out bit<32> x)() {
      apply {
       H h3 = {
  b = "S1", ... };
     }
    }
