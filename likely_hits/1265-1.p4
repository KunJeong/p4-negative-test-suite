// generated from issue1586.p4

extern void random<T>(out T result, in T lo);
        control cIngress0() {
         list<match_kind> rand_val;
         apply {
          random(rand_val, 0);
        }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_49_r_1048_issue1586_F6P1048S0D0M2T3.p4
// =========================================
