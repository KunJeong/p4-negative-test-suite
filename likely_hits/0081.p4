// generated from issue1205-bmv2.p4

parser P();
        control C();
        package V1Switch(C c, P p);
        parser MyP()() {
         state start {
          }
       }
        control MyC()() {
         apply {
     }
       }
        V1Switch(MyP(), MyC()) main;
