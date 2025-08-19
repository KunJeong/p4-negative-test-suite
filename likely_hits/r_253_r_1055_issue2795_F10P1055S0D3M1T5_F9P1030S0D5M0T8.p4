extern packet_out {
         abstract void emit<T>(in T hdr);
       }
        header H {
         bit<32> a;
         bit<32> b;
       }
        control c(packet_out p)() {
         apply {
          p.emit(0);
          p.emit<string>({
     0, 1 }
     );
        }
       }
