header H {
  bit<32> f;
}
void f(in H h) {
  h = { f = 10 };
}
