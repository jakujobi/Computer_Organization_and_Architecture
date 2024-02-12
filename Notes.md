# Class 1 - Jan 8 2024

- Talked about the bridge of hardware and software

# Class 2 - Comp Abstractinos & Technology

Things that affect performance

- **Algorithm:** Number of operations executed
- **Programming language, compiler, architecture:** Number of instructions executed per operation
- **Processor and memory system:** How fast the instructions are executed
- **I/o system (including OS):** determines how fast I/O operations are executed

__Ask him about how he does the backups

## Eigth Great Ideas

- Design for Moore's Law
- Use abstraction to simplify design
- Make the common case fast: Focus more efficiency in its common case
- Performance via parallelism
- Performance via pipelining
- Performance via prediction
- Hierarchy of memories
- Dependability via redundancy
- 

### Below our program

- Application software: Written in high level language
  - High level language - C, C++, Java, Python
    - Level of abstraction closer to the problem domain
    - Provides a high level view of the problem, productivity and portability
- System software
  - Compiler: Translates High level language to low level and machine code
    - Assembly Language: Textual representation of instructions
  - Operating system: service code
    - Handles input and output
    - Handles memory management, storage, and system calls
    - Scheduling tasks & shared resources
- Hardware: Processor, memory, I/O controllers
  - We will learn how to make the decisions in hardware
  - Hardware representation: Binary digits (bit)
    - Encoded instructions and data

### Components of a Computer

- I/O Input and output:
  - Storage devices
  - Network adapters: Connects computers together
  - User-interface devices: Keyboard, mouse, harddrive
- Memory
- Processor

### Video memory

- Where a program writes to for what to display
- Frame buffer

## CSC 317 cover

- Hardware Software interface
- Hardware
- Software

## What is Computer Architecture

Instruction Set Architecture (ISA)

- The interface or boundary between hardware and software
- The hardware's specifications

### Abstractions

- Abstraction helps us deal with complexity
  - hide lower level detail

## Other

- CPU Time: (Not going to ask us to calculate it, but remember the formula)
- Clock Time
- Clock Speed
- Clock Cycle
- Frequency
  By decreasing the time per clock cycle, you increase the performance
- ``Homework``
- ## On the Exam
- There will be a question like that of slide 37, Chapter 1, Computer Abstractions and Technology
- It is about calculating CPU Time and trying to make a computer complete a work in a short time
- Answers on page 37 and 38

## CPI Examples

- Code Sequences
- CPI means Clock Cycles Per Instruction
- IC = Number of instructions or instruction count
- Will be given in the homework and textbook
- Check for formulas

## Performance Summary

CPU Time = (Instruction Count) * (CPI) * (Time per clock cycle)

- Algorithm - Affects IC, possibly CPI

  - Quick sort uses more instructions that bubble sort
- Programming language - Affects IC, CPI
  We will focus on the abov
- Compiler: affects IC, CPI
- Instruction Set Architecture: affects IC, CPI, T
- Processor
- Memory system
- I/o system (including OS)
- Application software
- System software
- Hardware

### Reducing Power


---

LDUR means Load unscaled register
Know the difference between RFormat and D format
Each instruction is 32 bits in total.

Add immediate code needs only 10 bits for the function name.