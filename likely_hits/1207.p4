// generated from table-entries-range-bmv2.p4

match_kind {
       range,   optional,   selector }
      struct standard_metadata_t {
     }
      header hdr {
       bit<8> r;
     }
      struct Header_t {
       hdr h;
     }
      struct Meta_t {
     }
      control ingress(inout Header_t h, inout Meta_t m, inout standard_metadata_t standard_meta)() {
       action a() {
      }
       action a_with_control_params(bit<9> x) {
      }
       table t_range {
        key = {
         h.h.r : range;
       }
        actions = {
       }
        const entries = {
         (true) : a_with_control_params(22);
       }
      }
       apply {
      }
     }
