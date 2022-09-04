# Conclusion

Through the use of diverse prng data, the operability of the vivado simulation and FPGA simulation 
performance index is tested in this experiment. It is preferable to avoid selecting the xoshiro 128+ 
version while configuring, thus pay attention when selecting the prng xoshiro version. It is also 
demonstrated that a number of Xoshiro 128 models will be accompanied by significant failures using 
a variety of indications and data from some participants on github on the network. Since their state is 
too small for enormous parallelism, xoshiro256**, their intended use is inside embedded hardware or 
GPUs. It performs essentially the same but has superior statistical features.
Let's now discuss about this project's improvements. The most recent processor framework is RISCV. 
Many experts are currently undergoing testing. On the Internet, they can only locate a few of the 
RISCV's most fundamental specifications and results. On GitHub, there is just one configuration 
tutorial. Therefore, in the early stages of this experiment, I devoted a lot of effort to learning about the 
architecture and fundamental capabilities of the NEORV32 processor and making accurate predictions 
about its potential. Second, I learned how to set up a virtual machine and run some simulation tests on 
it by using vivado on Linux. At the same time, I have a thorough understanding of the processor and 
its framework thanks to the GitHub tutorial.
Firstly, random generation of PRNG is a very efficient way to check the processor's indicators, but 
when choosing the best PRNG simulator, it's important to pick one with a wide enough state space 
and a large enough range. This will make the operation process more effective and increase 
efficiency. The output of the toolchain will be impacted if the gcc version is not kept current while 
configuring the toolchain. The prng algorithm cannot be optimised by the toolchain if the gcc is not 
updated in a timely manner because the built code is intended to be output through the hardware 
FPGA.
Verification becomes more challenging if there are more cores, existing peripherals, and custom 
hardware modules. The register transfer level (RTL) simulation seems to run slower and does not 
cover the complete range of tests in a fair period of time as CPU cores become more potent and have 
more features. When paired with the cycle accuracy, the simulation test's speed is substantially 
greater , lengthening and complicating the process.
This research explored how bespoke RISC-V core accuracy and efficiency can be tested using VHDL 
software simulation. An implementation-wise performance enhancement for a particular workload is 
testing a unique RISC-V kernel. Following the selection of the xoroshiro128+ PRNG for this 
workload, an appropriate benchmark was created. The workloads of the time prompted the 
development of the performance optimized NEORV32 CPUs. Thesis may demonstrate a From the 
fundamental NEORV32 core to the complete custom core performance boost. The performance of 
PRNG workloads is greatly improved by these changes.
The FPGA hardware on the test board has to be examined further in order to improve this experiment. 
My experiment ran into issues with the virtual machine's USB interface connection, as well as the 
absence of the anticipated Arty-7a-35 test board. The Basys3 board was deployed in its place. There 
will be some error when setting the constraint file to account for interface pairing problems. As a 
result, the hardware board cannot handle all of the program's tasks
