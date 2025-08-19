header H {
     }
      control C(out bit<32> x)() {
       H[2] stack;
       apply {
        tuple<> h0;
        stack = {
   h0, ... };
      }
     }
