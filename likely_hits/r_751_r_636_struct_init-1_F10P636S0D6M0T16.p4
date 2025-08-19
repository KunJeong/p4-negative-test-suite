struct PortId_t {
         bit<9> _v;
       }
        const PortId_t PSA_CPU_PORT = {
       _v = 9w192 };
        struct metadata_t {
         PortId_t foo;
       }
        control I(inout metadata_t meta)() {
         apply {
          if (((meta.foo) == (PSA_CPU_PORT))) {
       if (((false) * (false))) h = {
    b = 2 };
     }
        }
       }
