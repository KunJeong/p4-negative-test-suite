 struct standard_metadata_t {
       }
        enum bit<5> TableType {
       TT_ACL = 0, TT_FWD = 1 };
        struct headers_t {
       }
        struct local_metadata_t {
       }
        control ingress(inout headers_t headers, inout local_metadata_t local_metadata, inout standard_metadata_t standard_metadata)() {
         bit<4> y;
         table X {
          key = {
           y : TT_FWD;
         }
          actions = {
         }
        }
         apply {
     }
       }
