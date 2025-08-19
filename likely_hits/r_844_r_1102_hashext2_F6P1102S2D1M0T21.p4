extern crc_poly<O> {
         crc_poly(O poly);
         abstract O hash<T>();
       }
        header h1_t {}
        struct hdrs {
         bit<16> crc;
       }
        control test(inout hdrs hdr) {
         apply {
          hdr.crc = crc_poly<>(16w32794).hash0;
        }
       }
