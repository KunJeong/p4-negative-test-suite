 header H {
       bit<32> a;
       bit<32> b;
     }
      control c(bool p)() {
       apply {
        p.emit(((H) ({
   0, 1 }
   )));
      }
     }
