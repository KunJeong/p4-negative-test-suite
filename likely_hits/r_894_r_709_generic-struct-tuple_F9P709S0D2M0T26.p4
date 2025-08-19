struct S<T> {
  tuple<T, T> t;
}
const tuple<> x = { t = { 0, 0 } };
