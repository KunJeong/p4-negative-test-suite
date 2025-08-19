 parser p(inout bit<4> result)() {
        state start {
         }
      }
       parser P(out bit<4> r);
       package top(P p);
       top(p()) main;
