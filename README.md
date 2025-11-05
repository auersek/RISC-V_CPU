## PROJECT: RISC-V CPU (System Verilog, RISC-V Assembly):

This project focused on designing and implementing a fully functional pipelined RISC-V CPU with cache in SystemVerilog. The goal was to create a processor capable of executing the RV32I instruction set while maintaining high performance and efficient hazard handling.

To improve throughput, I incorporated a five-stage pipeline (Fetch, Decode, Execute, Memory, and Write-Back) allowing the CPU to process multiple instructions simultaneously instead of sequentially. Clocked flip-flops were placed between each pipeline stage to synchronize signal flow and ensure proper timing, as shown below.


<img src="https://github.com/auersek/Portfolio/blob/main/Images/Screen%20Shot%202025-03-28%20at%206.12.54%20PM.jpg" width="850" height="550" alt="Pipeline 5 stages passed">

To address data and control hazards, I designed a dedicated hazard detection unit that performs stalling, flushing, and data forwarding when necessary. I also added support for JAL and JALR instructions by integrating jump and subroutine logic into the control path. For memory performance, I implemented a two-way set-associative cache with a write-through policy and LRU (Least Recently Used) replacement to handle cache misses efficiently.

The CPU was validated by running a wide range of RISC-V assembly programs to ensure full instruction-set functionality. As an extension, I wrote a Probability Distribution Function program, deployed it to an FPGA, and visualized the output on hardware, as shown below.

<img src="https://github.com/user-attachments/assets/64a0fcce-7148-4b86-b091-61f913ab8beb" width="50%">
