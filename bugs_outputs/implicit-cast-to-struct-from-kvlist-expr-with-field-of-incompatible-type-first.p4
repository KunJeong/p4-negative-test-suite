header H1 {
}

struct S1 {
    H1   h;
    bool b;
}

control C() {
    apply {
        S1 sb = (S1){h = (H1){},b = false};
    }
}

