// generated from type-spec-nested.p4

void test<T>(in T val) {}
control c(inout bit<8> a)() {
  apply {
    test<varbit<4>>((int<6>) 0);
  }
}
