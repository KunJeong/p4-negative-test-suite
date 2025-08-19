   struct Headers {
       }
        void f(inout Headers h) {
         h.eth_hdr = ((((h.eth_hdr.eth_type) == (1))) ? ({
      1, 1, 1 }
      ) : ({
      2, 2, 2, ... }
      ));
       }
