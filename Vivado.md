# Vivado

Vivado is responsible for compiling, synthesizing, and implementing the SoC described by the hardware description language (Verilog/VHDL) to configure various logic resources (such as lookup tables, flip-flops, RAM.) that are inherently disordered within the FPGA into ordered circuits to implement SoC functions. And Keil is responsible for compiling the written software programming language (C/Assembler) into a machine code hex file. 

The machine code is used as the initialization content of the RAM and can be simulated to observe the waveforms of each signal in the Modelsim software when the SoC is operating. If the machine code is downloaded to the SoC implemented by FPGA through a tool, then the SoC can be allowed to execute the program written and the results of the program operation can be observed through the development board.

The link below shows the tutorial of install Vivado, choose the suitable version and download into Linux.

https://www.xilinx.com/support/documentation-navigation/self-paced-tutorials/see-all-tutorials.html
