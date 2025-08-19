extern packet_in {
       }
        header Hdr {
         bit<8> x;
       }
        struct Headers {
         Hdr[2] h1;
       }
        parser P() {
         state start {
            if ((0 == 0)) {
       reject[1] = h.h1.next;
     }
          }
       }
