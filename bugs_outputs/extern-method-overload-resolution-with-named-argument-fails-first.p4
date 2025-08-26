extern packet_in {
    void extract<T>(out T hdr);
    void extract<T>(out T hdr, in bit<32> variableFieldSizeInBits);
}

header ethernet_t {
}

struct headers {
    ethernet_t ethernet;
}

parser ParserImpl(packet_in packet, out headers hdr) {
    state parse_ethernet {
        packet.extract<ethernet_t>(hdr = hdr.ethernet);
        transition reject;
    }
    state start {
        transition reject;
    }
}

