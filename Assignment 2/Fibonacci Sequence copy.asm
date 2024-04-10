.global _start
_start:
    mov x0, #10  // Calculate the 10th Fibonacci number
    bl fib  // Call the fib function

    // Print the result
    mov x1, x0  // Move the result to x1
    ldr x0, =buffer  // Load the address of the buffer
    bl itoa  // Call the itoa function

    // Write the result to stdout
    mov x0, #1  // File descriptor (stdout)
    ldr x1, =buffer  // Buffer
    ldr x2, =20  // Count
    mov x8, #64  // System call number (write)
    svc #0  // Make the system call

    // Exit the program
    mov x8, #93  // System call number (exit)
    mov x0, #0  // Exit status
    svc #0  // Make the system call

.global fib
fib:
    sub sp, sp, #16  // Allocate stack space
    stp x29, x30, [sp, #16]  // Save frame pointer and return address
    add x29, sp, #16  // Update frame pointer

    cmp x0, #0  // Compare n with 0
    beq zero  // If n is 0, branch to label 'zero'
    cmp x0, #1  // Compare n with 1
    beq one  // If n is 1, branch to label 'one'

    sub x1, x0, #1  // Calculate n-1
    bl fib  // Recursive call to fib(n-1)
    mov x19, x0  // Save the result of fib(n-1)

    sub x1, x0, #2  // Calculate n-2
    bl fib  // Recursive call to fib(n-2)

    add x0, x0, x19  // Add the results of fib(n-1) and fib(n-2)

    b end  // Branch to label 'end'

zero:
    mov x0, #0  // If n is 0, return 0
    b end  // Branch to label 'end'

one:
    mov x0, #1  // If n is 1, return 1

end:
    ldp x29, x30, [sp, #16]  // Restore frame pointer and return address
    add sp, sp, #16  // Deallocate stack space
    ret  // Return to caller


.global itoa
itoa:
    // Convert an integer to a string
    // x0: buffer, x1: integer
    // This is a simple implementation that only works for non-negative integers
    mov x2, x1  // Copy the integer
    add x3, x0, #19  // Start from the end of the buffer
    strb wzr, [x3]  // Null-terminate the string
    cbz x2, done  // If the integer is 0, branch to 'done'
loop:
    udiv x4, x2, #10  // Divide the integer by 10
    msub x5, x4, #10, x2  // Calculate the remainder
    add x5, x5, #'0'  // Convert the remainder to a character
    sub x3, x3, #1  // Move to the previous character
    strb w5, [x3]  // Store the character in the buffer
    mov x2, x4  // Move to the next digit
    cbnz x2, loop  // If the integer is not 0, branch to 'loop'
done:
    mov x0, x3  // Return the start of the string
    ret  // Return to caller

.section .bss
buffer:
    .skip 20  // Reserve 20 bytes for the buffer