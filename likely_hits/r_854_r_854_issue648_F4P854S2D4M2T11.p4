header hdr {
       bit<32> a;
     }
      control ingress(hdr h)() {
       apply {
        h.a[7:0] = ((bit<32>) (h.c))[7:0];
      }
     }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_855_r_854_issue648_F4P854S2D4M2T11.p4
// =========================================
