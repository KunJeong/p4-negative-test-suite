// generated from entries-prio.p4

struct Headers {
       }
        control c(in Headers h)() {
         table t_exact_ternary {
          actions = {
         }
          priority_delta = -2;
        }
         apply {
     }
       }
