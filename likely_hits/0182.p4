// generated from stack-init.p4

header H<T> {
    T t;
  }
  control c(out bit<32> r)() {
    apply {
     H<int>[3] s;
   }
  }
