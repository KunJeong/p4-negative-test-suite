header H {
  bit<32> f;
}
void f(string h) {
  h = { f = 10 };
}
