   struct hdrs {
     }
      control test(inout hdrs hdr)() {
       apply {
        hdr.crc = crc_poly<bit<16>>(16w32794).hash(hdr.h1);
      }
     }
