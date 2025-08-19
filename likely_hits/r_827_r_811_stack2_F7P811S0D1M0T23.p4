 control c(out bit<32> x)() {
         apply {
          match_kind stack;
          bit<32> sz = stack.size;
        }
       }
