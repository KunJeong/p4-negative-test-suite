typedef bit<1> t;
        extern e {
         e();
         abstract t f<f, reject>(in t a);
       }
        parser MyParser0() {
         e() ee = {
          t f(in t a) {
           return a;
         }
        };
         state start {}
       }
