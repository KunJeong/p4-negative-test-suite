header_union H {
    }
     control C(out bit<32> x)() {
      apply {
       H h8 = ((H) ({
  b = 2, ... }
  ));
     }
    }
