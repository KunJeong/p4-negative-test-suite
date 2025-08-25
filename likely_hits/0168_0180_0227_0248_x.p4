// generated from issue3324.p4

void f<t>(in t a) {}
void g<t>(in tuple<_, tuple<>> b) {
  f(b);
}
