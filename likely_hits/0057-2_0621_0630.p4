// generated from type-spec-nested.p4

void test<T>(in T val) {
      }
        struct S2<T> {
         T x;
         T y;
       }
        struct S1<T1, T2> {
         T1 x;
         S2<T2> y;
       }
        control c(inout bit<8> a)() {
         apply {
          test(((S1<bit<4>, int<6>>) ({
     x = 0, y = ((S2<bit<6>>) ({
    x = 0, y = 0 }
    )) }
     )));
        }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 2 duplicate files:
// - r_621_r_631_type-spec-nested_F10P631S0D7M0T11.p4
// - r_630_r_631_type-spec-nested_F10P631S0D7M0T11.p4
// =========================================
