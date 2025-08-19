// generated from issue1386.p4

header hdr {}
control compute(inout hdr h)() {
  apply {
    if (!"lazy") {}
  }
}
