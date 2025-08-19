header H<T> {
}
control c(out bit<32> r)() {
  apply {
    s = ((H<bit<32>>[3]) ({ { 0, 1 }, { 2, 3 }, ((H<bit<2>>) ({#})) }));
  }
}
