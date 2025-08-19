match_kind {
      exact,   ternary,   lpm }
     struct standard_metadata_t {
    }
     typedef bit<16> etype_t;
     typedef bit<48> EthernetAddress;
     header ethernet_h {
      EthernetAddress src_addr;
      etype_t ether_type;
    }
     struct headers_t {
      ethernet_h ethernet;
    }
     struct metadata_t {
    }
     control ingressImpl(inout headers_t hdr, inout metadata_t umd, inout standard_metadata_t stdmeta)() {
      action a() {
  }
      action a_params(bit<32> param) {
     }
      table t5 {
       key = {
        hdr.ethernet.src_addr : exact;
        hdr.ethernet.ether_type : ternary;
      }
       actions = {
        a_params;
      }
       entries = {
        priority = 2 : (1, 4369 &&& 15) : a_params(1);
        (2, 4481) : a_params(2);
        (3, 4096 &&& 61440) : a_params(3);
        (6, _) : a_params(6);
      }
     }
      apply {
     }
    }
