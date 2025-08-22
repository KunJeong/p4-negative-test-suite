// generated from issue1863.p4

struct S {
        bit<1> a;
        bit<1> b;
      }
       control c(out bit<1> b)() {
        apply {
         S s = {
    {
   ... }
   , ... };
       }
      }
