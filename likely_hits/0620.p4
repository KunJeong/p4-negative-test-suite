// generated from issue3616.p4

enum bit<0> e {
  a = 0,
  b = 0,
  c = (bit<4>) a,
  d = a
};
