parser P();
      control C();
      package V1Switch(P p, C c);
      control MyC()() {
       apply {
   }
     }
      V1Switch(MyC(), MyC()) main;
