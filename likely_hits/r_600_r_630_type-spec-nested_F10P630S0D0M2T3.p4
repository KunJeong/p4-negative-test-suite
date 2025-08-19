void test<T>(in T val) {
      }
        struct S2<T> {
       }
        struct S1<T1, T2> {
       }
        control c0() {
         apply {
          test(((S1<varbit<4>, int<6>>) 0));
        }
       }
