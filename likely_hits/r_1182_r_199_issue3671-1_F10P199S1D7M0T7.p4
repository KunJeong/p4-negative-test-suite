struct s {
         bit<1> f0;
         bit<1> f1;
       }
        extern bit<1> ext();
        control c()() {
         table t {
          actions = {
           .ext(((s) ({
    ext(), ext() }
    )));
         }
        }
         apply {
     }
       }
