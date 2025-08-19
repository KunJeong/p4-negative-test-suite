// generated from table-entries-lpm-bmv2.p4

match_kind {
        exact,   ternary,   lpm }
       struct standard_metadata_t {
      }
       header hdr {
        bool l;
      }
       struct Header_t {
        hdr h;
      }
       struct Meta_t {
      }
       control ingress(inout Header_t h, inout Meta_t m, inout standard_metadata_t standard_meta)() {
        table t_lpm {
         key = {
          h.h.l : lpm;
        }
         actions = {
        }
       }
        apply {
       }
      }
