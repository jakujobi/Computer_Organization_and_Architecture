// int fib(int n) {
//     if (n == 0) {
//         return 0;
//     } else if (n == 1) {
//         return 1;
//     } else {
//         return fib(n - 1) + fib(n - 2);
//     }
// }

fib:
    //Lets assume that n is in x0
    //since that is where arguements go to

    sub sp, sp, #16  // Allocate stack space
    // Save frame pointer and return address
    stp x29, x30, [sp, #16] 
    add x29, sp, #16  // Update frame pointer

    //if (n == 0) {return 0;}
    cmp x0, #0      //check if n is 0
    beq end_if_zero //jump to return 0 if n is 0

    //else if (n == 1) { return 1;}
    cmp x0, #1      //check if n is 1
    beq end_if_one  //jump to return 1 if n is 1

    //fib(n - 1)
    mov x1, x0      //copy n to x1 for keeping
    sub x0, x0, #1  //n = n - 1
    bl fib          // call fib(n - 1)
    mov x19, x0     //store fib(n - 1) in x19

    //fib(n - 2)
    mov x0, x1      //copy n to x0
    sub x0, x0, #2  //subtract 2 from n
    bl fib          //call fib
 
    add x0, x19, x1 //add fib(n - 1) + fib(n - 2)

    b end           //jump to 'end'

end_if_zero:
    mov x0, #0      // If n is 0, return 0
    b end           // Branch to label 'end'

end_if_one:
    mov x0, #1      // If n is 1, return 1

end:
    // Restore frame pointer and return address
    ldp x29, x30, [sp, #16] 
    add sp, sp, #16  // Deallocate stack space
    ret  // Return to caller function