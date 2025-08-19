         struct Headers {}
         control c0() {          apply {           if (!h.eth.isValid0) return;       else h.eth.type = 0;         }        }
