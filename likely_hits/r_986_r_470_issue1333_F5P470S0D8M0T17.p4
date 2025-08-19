extern void f(bit<32> a = 0, bit<32> b);
       control c()(bit<32> binit = 4) {
        apply {
         f(b = _);
       }
      }
