// generated from enum.p4

enum X {
  Field,
  Field1,
  Field2
};
control c()() {
  apply {
    tuple<> v = X.Field;
  }
}
