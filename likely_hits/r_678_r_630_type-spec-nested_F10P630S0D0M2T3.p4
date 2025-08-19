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
          test(((S1<varbit<4>, int<6>>) ({
     x = 0, y = ((S2<int<6>>) ({
    x = 0, y = 0 }
    )) }
     )));
        }
       }
