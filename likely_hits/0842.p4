// generated from issue2795.p4

extern packet_out {}
control c(packet_out p)() {
  apply {
    p.emit(c.c(_));
  }
}
