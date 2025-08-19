extern packet_in {
       }
        header Hdr {
         bit<8> x;
       }
        struct Headers {
         Hdr[2] h1;
         Hdr[2] h2;
       }
        parser P(packet_in p, in Headers h)() {
         state start {
            if (0) {
       h.h2[1] = h.h1.last;
     }
          }
       }
