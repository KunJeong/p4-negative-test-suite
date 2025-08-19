struct s {
     }
      control c()() {
       bit<2> tt;
       action a1(in s v) {
        tt = ((v.f0) ++ (v.f1));
      }
       apply {
   }
     }
