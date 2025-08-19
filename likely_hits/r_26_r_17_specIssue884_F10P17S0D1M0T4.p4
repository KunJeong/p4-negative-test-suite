extern CRCPolynomial<T> {
         CRCPolynomial(T coeff);
       }
        extern Hash<W> {
         Hash(CRCPolynomial<_> poly);
       }
        struct headers_t {}
        struct meta_t {}
        control Ingress0() {
         Hash<bit<32>, bit<32>>(poly = CRCPolynomial(coeff = 16w263)) hash2;
         apply {}
       }

// =========================================
// MERGED DUPLICATE FILES:
// This file consolidates 1 duplicate files:
// - r_28_r_17_specIssue884_F10P17S0D1M0T4.p4
// =========================================
