// generated from shift-int-const.p4

header hdr_t {}
control c(out string P)() {
  apply {}
}
control C(inout hdr_t hdr);
package P(C c);
P(c()) main;
