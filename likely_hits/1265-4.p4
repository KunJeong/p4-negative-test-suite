// generated from issue1586.p4

extern void random<T>(out T result, in T lo);
       control cIngress()() {
        apply {
         random(_, 0);
       }
      }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_129_r_977_issue1586_F10P977S0D1M1T4.p4
// =========================================
