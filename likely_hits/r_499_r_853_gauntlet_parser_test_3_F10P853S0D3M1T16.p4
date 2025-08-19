extern packet_in {
       }
        header Hdr {
         bit<8> x;
       }
        struct Headers {
         Hdr[2] h1;
       }
        parser P(packet_in p, out Headers h)() {
         state start {
            if ((0 == 0)) {
       return;
     }
          }
       }
