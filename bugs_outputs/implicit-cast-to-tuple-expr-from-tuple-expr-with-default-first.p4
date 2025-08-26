header ethernet_t {
}

struct Headers {
    ethernet_t eth_hdr;
}

void f(inout Headers h) {
    h.eth_hdr = (ethernet_t){};
}
