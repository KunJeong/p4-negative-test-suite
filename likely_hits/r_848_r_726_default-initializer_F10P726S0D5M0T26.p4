 struct S {
   }
    control C(out bit<32> x)() {
     apply {
      S s3 = ((false) ? ({
 ... }
 ) : (true));
    }
   }
