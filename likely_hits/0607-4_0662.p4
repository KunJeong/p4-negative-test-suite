// generated from default-initializer.p4

header H {
       varbit<32> b;
     }
      control C(out bit<32> x)() {
       apply {
        H h8 = ((H) ({
   b = 2, ... }
   ));
      }
     }
