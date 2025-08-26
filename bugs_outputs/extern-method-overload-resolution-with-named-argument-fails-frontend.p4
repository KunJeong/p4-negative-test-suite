extern packet_in {
    void extract<T>(out T hdr);
    void extract<T>(out T hdr, in bit<32> variableFieldSizeInBits);
}

header ethernet_t {
}

struct headers {
    ethernet_t ethernet;
}

