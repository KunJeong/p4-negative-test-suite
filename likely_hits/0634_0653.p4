// generated from struct_init-1.p4

struct PortId_t {
  bit<9> _v;
}
header H {
  bit<32> b;
}
const PortId_t PSA_CPU_PORT = { _v = 9w192 };
struct metadata_t {
  PortId_t foo;
}
control I(inout metadata_t meta)() {
  apply {
    H h = { b = 1 };
    if (meta.foo == PSA_CPU_PORT) {
      if (h == ((H) { b = { ... } })) h = { b = 2 };
    }
  }
}
