// generated from type-spec-nested.p4

void test<T>(in T val) {}
struct S2<T> {
  T x;
  T y;
}
struct S1<T1, T2> {
}
control c(inout bit<8> a)() {
  apply {
    test(((S1<bit<4>, int<6>>) ({ x = 0, y = ((S2<int<6>>) ({ x = {#}, y = 0 })) })));
  }
}

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_682_r_632_type-spec-nested_F10P632S0D8M0T13.p4
// =========================================
