 struct standard_metadata_t {
    }
     header ipv4_t {
    }
     struct meta_t {
    }
     struct headers_t {
      ipv4_t ipv4;
    }
     control ingress(inout headers_t hdr, inout meta_t meta, inout standard_metadata_t standard_metadata)() {
      table ipv4_da_lpm {
       key = {
        hdr.ipv4.dstAddr : lpm;
      }
       actions = {
      }
     }
      apply {
     }
    }
