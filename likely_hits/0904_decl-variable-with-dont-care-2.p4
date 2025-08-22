// generated from tuple4.p4

control c(out bit<16> r)() {
         apply {
          tuple<bit<32>, _> x = {
     10, 12 };
          if (((x) == ({
     10, 12 }
     ))) r = x[1];
        }
       }
