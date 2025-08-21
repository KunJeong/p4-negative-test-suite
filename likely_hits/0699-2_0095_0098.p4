// generated from issue3806.p4

header ethernet_t {}
        struct Headers {
         ethernet_t eth_hdr;
       }
        void f(inout Headers h) {
         h.eth_hdr = (((0 == 0)) ? ({}
      ) : ({
      2, 2, 2, ... }
      ));
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 2 duplicate files:
// - r_95_r_777_issue3806_F10P777S0D9M0T12.p4
// - r_98_r_777_issue3806_F10P777S0D9M0T12.p4
// =========================================
