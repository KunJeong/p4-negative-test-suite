 extern packet_in {
     }
      enum PSA_PacketPath_t {
       NORMAL,   NORMAL_UNICAST,   NORMAL_MULTICAST,   CLONE_I2E,   CLONE_E2E,   RESUBMIT,   RECIRCULATE };
      struct psa_ingress_parser_input_metadata_t {
     }
      struct EMPTY {
     }
      struct headers_t {
     }
      parser MyIP(packet_in buffer, out headers_t hdr, inout EMPTY b, in psa_ingress_parser_input_metadata_t c, in EMPTY d, in EMPTY e)() {
       value_set<tuple<match_kind, _>>(4) pvs;
       state start {
        }
     }
