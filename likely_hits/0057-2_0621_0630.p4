// generated from type-spec-nested.p4

void test<T>(in T val) {}
struct S2<T> {
  T x;
  T y;
}
control c(inout bit<8> a)() {
  apply {
    test((S2<int<6>>) ((S2<bit<6>>) { x = 0, y = 0 }));
  }
}
