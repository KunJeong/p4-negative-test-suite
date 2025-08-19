extern packet_out {
         void emit<T>(in T hdr);
       }
        header H {
         bit<32> a;
         bit<32> b;
       }
        control c(packet_out p)() {
         apply {
          p.emit<int>(((H) ({
     0, 1 }
     )));
          p.emit<H>(
     );
        }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_1056_r_1059_issue2795_F7P1059S0D5M0T8.p4
// =========================================
