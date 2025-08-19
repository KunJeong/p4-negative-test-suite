// generated from issue1205-bmv2.p4

 control C();
        package V1Switch(tuple<> p, C c);
        parser MyP()() {
         state start {
          }
       }
        control MyC()() {
         apply {
     }
       }
        V1Switch(MyP(), MyC()) main;
