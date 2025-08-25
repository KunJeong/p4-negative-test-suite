// generated from issue3343.p4

parser MyParser(in int<8> x) {
  value_set<bit<6>>(4) myvs;
  state start {
    transition select(x) {
      (myvs): accept;
    }
  }
}
