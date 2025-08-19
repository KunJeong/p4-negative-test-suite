extern packet_in {
      }
       struct Headers {
      }
       parser P(packet_in p, out Headers h)() {
        state start {
           p.extract(h.h1.next);
         }
      }
