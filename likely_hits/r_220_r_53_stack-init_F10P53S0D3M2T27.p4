header H<T> {
   }
   control c(out bit<32> r)() {
     apply {
      H<bit<32>>[-2] s;
    }
   }
