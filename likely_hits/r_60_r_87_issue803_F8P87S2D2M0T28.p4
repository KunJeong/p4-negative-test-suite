parser Parser<IH>(out IH parsedHeaders);
          package Ingress<IH>(Parser<IH> p);
          package Switch<IH>(Ingress<IH> ingress);
          struct H {
}
          parser ing_parse(out H hdr) {
          state start {}
        }
          Ingress(ing_parse()) ig1;
          Switch<tuple<>>(ig1) main;

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 2 duplicate files:
// - r_79_r_87_issue803_F8P87S2D2M0T28.p4
// - r_87_r_87_issue803_F8P87S2D2M0T28.p4
// =========================================
