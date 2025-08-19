control ctrl0() {
         action b() {
     }
         table t {
          actions = {
           b;
         }
        }
         apply {
          switch (t.apply().action_run) {
       b:   b:   default: }
        }
       }
