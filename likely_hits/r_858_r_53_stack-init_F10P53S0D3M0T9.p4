header H<T> {
  bit<32> b;
  T t;
}
control c(out bit<32> r)() {
  apply {
    H<bit<32>>[0] s;
    s = ((H<bit<32>>[3]) ({ { 0, 1 }, { 2, 3 }, ((H<bit<32>>) ({#})) }));
  }
}
