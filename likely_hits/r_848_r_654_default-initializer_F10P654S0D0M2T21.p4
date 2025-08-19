 struct S {
   }
    control C(out bit<32> x)() {
     apply {
      S s8 = ((S) ({
 b = 2, ... }
 ));
    }
   }
