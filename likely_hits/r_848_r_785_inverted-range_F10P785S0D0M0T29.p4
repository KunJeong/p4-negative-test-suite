parser p(in bit<16> x)() {
         state start {
            transition select(x) {
         (10 .. "x"): accept;
       }
          }
       }
