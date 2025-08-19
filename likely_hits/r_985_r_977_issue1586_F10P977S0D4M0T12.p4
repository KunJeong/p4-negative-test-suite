extern void random<T>(out T result, out T lo);
        control cIngress0() {
         bit<8> rand_val;
         apply {
          random(rand_val, 0);
        }
       }
