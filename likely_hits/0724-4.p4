// generated from issue3806.p4

header ethernet_t {
         bit<16> eth_type;
       }
        struct Headers {
         ethernet_t eth_hdr;
       }
        void f(inout Headers h) {
         h.eth_hdr = (((0 == 0)) ? 0 : ({
      2, 2, 2, ... }
      ));
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_778_r_777_issue3806_F10P777S0D9M0T12.p4
// =========================================
