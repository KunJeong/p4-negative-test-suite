extern packet_out {
       }
        header H {
       }
        control c(packet_out p)() {
         apply {
        }
       }
        control ctr(packet_out p);
        package top(ctr _c);
        top(c()) main = {
         error a() {
     }
       };
