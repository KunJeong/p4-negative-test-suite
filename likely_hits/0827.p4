// generated from issue3203.p4

struct h<t> {
  t f;
}
bit<1> func(match_kind a) {
  return a.f;
}
