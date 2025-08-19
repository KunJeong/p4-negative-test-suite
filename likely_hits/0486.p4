// generated from issue1386.p4

extern packet_in {
        void extract<T>(out T hdr);
        void extract<T>(out T variableSizeHeader);
      }
       struct standard_metadata_t {
      }
       header hdr {
      }
       struct Headers {
        hdr h;
      }
       struct Meta {
      }
       parser p(packet_in b, out Headers h, inout Meta m, inout standard_metadata_t sm)() {
        state start {
           b.extract(h.h);
         }
      }
