extern packet_in {
        void extract<T>(out T hdr);
        void extract<T>(out T hdr, in bit<32> variableFieldSizeInBits);
      }
       struct standard_metadata_t {
      }
       header ethernet_t {
      }
       struct metadata {
      }
       struct headers {
        ethernet_t ethernet;
      }
       parser ParserImpl(packet_in packet, out headers hdr, inout metadata meta, inout standard_metadata_t standard_metadata)() {
        state parse_ethernet {
           packet.extract(hdr = hdr.ethernet);
         }
        state start {
         }
      }
