header H<T> {
         bit<32> b;
       }
        control c(out bit<32> r)() {
         apply {
          H<bit<32>>[3] s;
          r = (((((((0 + (s[-2].t))) + 0)) + 0)) + (s[2].b));
        }
       }
