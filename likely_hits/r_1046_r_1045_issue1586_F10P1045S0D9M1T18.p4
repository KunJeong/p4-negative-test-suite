extern void random<T>(out bool T, in T lo);
        control cIngress0() {
         bit<8> rand_val;
         apply {
          random(rand_val, 0);
        }
       }
