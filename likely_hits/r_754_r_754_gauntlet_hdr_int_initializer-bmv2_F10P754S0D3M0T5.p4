struct standard_metadata_t {
       }
        header ethernet_t {
         bit<48> dst_addr;
         bit<48> src_addr;
         bit<16> eth_type;
       }
        struct Headers {
         ethernet_t eth_hdr;
       }
        struct Meta {
       }
        control ingress(inout Headers h, inout Meta m, inout standard_metadata_t sm)() {
         apply {
          ethernet_t tmp_hdr = {
     1, 1, 1 };
          h.eth_hdr.eth_type = ((tmp_hdr.eth_type) |-| (false));
        }
       }
