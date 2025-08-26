header H {
}

control C() {
    H[0] stack;
    apply {
        H h = (H){#};
        stack = (H[0]){};
    }
}

