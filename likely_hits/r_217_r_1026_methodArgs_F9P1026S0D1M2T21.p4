extern Random<T> {
  Random(T min);
}
control c()() {
  Random({#}) r2;
  apply {
    bit<16> v = r2.read();
  }
}
