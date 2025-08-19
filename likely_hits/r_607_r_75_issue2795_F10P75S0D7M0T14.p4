extern packet_out {
       }
        header H {
         bit<32> a;
         varbit<32> b;
       }
        control c(packet_out p)() {
         apply {
          p.emit(((H) ({
     0, 1 }
     )));
        }
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_627_r_75_issue2795_F10P75S0D7M0T14.p4
// =========================================
