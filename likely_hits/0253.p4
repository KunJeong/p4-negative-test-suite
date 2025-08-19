// generated from issue2273.p4

extern Stack<T> {
         Stack(int size);
       }
        extern StackAction<T, U> {
         StackAction(Stack<T> stack);
         abstract void underflow(inout T value, out U rv);
       }
        struct headers {
       }
        control ingress(inout headers hdr)() {
         Stack<bit<16>>(2048) stack;
         StackAction<bit<16>, string>(stack) read = {
        };
         apply {
     }
       }
