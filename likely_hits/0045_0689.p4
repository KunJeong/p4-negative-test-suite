// generated from serEnumImplCast.p4

enum bit<2> foo_t {
       A = 0, B = 1, C = 2, D = 3 };
        struct meta_t {
       }
        control c0() {
         action set_x(tuple<> v) {
     }
         table t {
          actions = {
           set_x;
         }
          default_action = set_x(foo_t.A);
        }
         apply {
     }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_689_r_981_serEnumImplCast_F10P981S0D1M0T2.p4
// =========================================
