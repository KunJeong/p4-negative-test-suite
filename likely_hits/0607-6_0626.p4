// generated from list9.p4

struct S<T> {
  T t;
}
extern E {
  E(S<bit<32>> data);
}
control c()() {
  E((S<varbit<32>>) { { 10 } }) e;
  apply {}
}
