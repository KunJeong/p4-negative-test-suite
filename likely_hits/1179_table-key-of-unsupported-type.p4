// generated from table-entries-lpm-bmv2.p4

 struct standard_metadata_t {
      }
       header hdr {
        varbit<8> l;
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
