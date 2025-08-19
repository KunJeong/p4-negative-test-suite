// generated from issue2795.p4

extern packet_out {
         void emit<T>(inout T hdr);
       }
        header H {
         bit<32> a;
         bit<32> b;
       }
        control c(packet_out p) {
         apply {
          p.emit(( ({
     0, 1 }
     )));
        }
       }
