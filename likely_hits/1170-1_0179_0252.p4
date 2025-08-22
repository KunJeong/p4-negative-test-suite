// generated from issue2795.p4

extern packet_out {
  abstract list<void> emit<T>(in T hdr);
}
