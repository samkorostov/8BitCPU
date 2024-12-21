# Simple 8-bit RISC Processor
### Sam Korostov
This is a project I'm starting to learn more about computer architecture.
This will be an 8-bit RISC microprocessor following Harvard architecture written
in SystemVerilog.

### Harvard architecture:
1. Program Counter (PC)
    - Holds address of next instruction to fetch from instruction memory
2. Instruction Memory (IMEM)
    - Stores instructions seperate from data
    - Read-only RAM module
3. Data Memory (DMEM)
    - Stores data seperate from instructions
    - Read and write enabled RAM module
5. Operational Registers
    - 8-bit registers to store intermediary values (TBD on number)
6. Arithmetic and Logic Unit (ALU)
    - Add, subtract, increment, decrement.
    - Bitwise AND, OR, XOR, NOT
    - Maybe need some logical operations TDB

7. Control Units
    - Need FSM to handle instruction cycles (fetch, decode, execute)
    - Instructional decoder

8. I/O System
    - TBD on what exactly is needed

### ISA (TBD what I exactly need):
1. Data Movement:
    - Load: Move data from mem. to reg.
    - Store: Move data from reg. to mem.
    - Move: Move data between regs.
2. Arithmetic:
    - Add: Add contents of 2 regs. and store in intermediatery reg.
    - Subract: Subtract contents of 2 regs, and store in intermediatery reg.
    - Increment: += 1 to current value.
    - Decrement: -= 1 from current value.
3. Logical:
    - BITWISE AND
    - BITWISE OR
    - BITWISE XOR
    - BITWISE NOT
    - TBD if need any logical operations, maybe bitwise will be sufficient
4. Shift and rotate:
    - Left shift
    - Right shift
    - Rotate left
    - Rotate right
5. Control flow:
    - Jump: Unconditionally jump to specified addr.
    - Jump if zero: Jump to specified addr. if zero flag set.
    - Jump if carry: Jump to specified addr. if carry flag set
    - Jump if no carry: Jump to specified addr. if not carry flag.
6. Compare:
    - Compare values in 2 regs.
7. Misc:
    - NOP: Not an operation, do nothing
    - Halt: stop everything
    - Reset: self explanatory


### Roadmap:
- [ ] Design ISA (and encodings)
- [ ] High-level block diagram(s)
- [ ] Design submodules
- [ ] Unit testing for submodules
- [ ] Integration testing
- [ ] System-level testing 

### Sources:
- [Pipelined 8-bit RISC Processor (IEEE)](https://ieeexplore.ieee.org/document/7808194)
- [Harvard Architecture (GFG)](https://www.geeksforgeeks.org/harvard-architecture/)

