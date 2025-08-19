parser p()() {
      state start {
       }
    }
     parser q()() {
      state start {
         p<string>.apply();
       }
    }
