struct standard_metadata_t {
       }
        header ethernet_t {
       }
        struct Headers {
       }
        struct Meta {
       }
        control ingress0() {
         apply {
          h.eth_hdr.eth_type = 0;
        }
       }
