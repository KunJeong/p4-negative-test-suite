// generated from table-entries-lpm-bmv2.p4

match_kind {
  exact,   ternary,   lpm }
  struct standard_metadata_t {
  }
header hdr {
  bit<8> l;
}
struct Header_t {
  hdr h;
}
struct Meta_t {
}
control ingress(inout Header_t h, inout Meta_t m, inout standard_metadata_t standard_meta)() {
  action a() {
  }
  table t_lpm {
    key = {
      h.h.l : lpm;
    }
    actions = {
    }
    const entries = {
      (17 &&& 6w0) : a_with_control_params(11);
    }
  }
  apply {
  }
}
