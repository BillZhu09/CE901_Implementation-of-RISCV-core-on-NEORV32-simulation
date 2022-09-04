# Hardware design

The NEORV32 project features two minimalistic pre-configured test setups in rtl/test_setups. Both test setups only implement very basic processor and CPU features. The main difference between the two setups is the processor boot concept - so how to get a software executable into the processor:

**rtl/test_setups/neorv32_testsetup_approm.vhd**: this setup does not require a connection via UART. The software executable is "installed" into the bitstream to initialize a read-only memory. Use this setup if your FPGA board does not provide a UART interface.

**rtl/test_setups/neorv32_testsetup_bootloader.vhd**: this setups uses the UART and the default NEORV32 bootloader to upload new software executables. Use this setup if your board does provide a UART interface.

**1.** Create a new project with your FPGA EDA tool of choice.

**2.** Add all VHDL files from the project’s rtl/core folder to your project.

**3.** Make sure to add all the rtl files to a new library called neorv32. If your FPGA tools does not provide a field to enter the library name, check out the "properties" menu of the added rtl files.

**4.** The rtl/core/neorv32_top.vhd VHDL file is the top entity of the NEORV32 processor, which can be instantiated into the "real" project. However, in this tutorial we will use one of the pre-defined test setups from rtl/test_setups (see above).

**5.**Add the pre-defined test setup of choice to the project, too, and select it as top entity.

**6.**The entity of both test setups provide a minimal set of configuration generics, that might have to be adapted to match your FPGA and board:
```
generic (
    -- adapt these for your setup --
    CLOCK_FREQUENCY   : natural := 100000000; 
    MEM_INT_IMEM_SIZE : natural := 16*1024;   
    MEM_INT_DMEM_SIZE : natural := 8*1024     
  );
  ```
  
**7.** If you feel like it - or if your FPGA does not provide sufficient resources - you can modify the memory sizes (MEM_INT_IMEM_SIZE and MEM_INT_DMEM_SIZE - marked with notes "2" and "3"). But as mentioned above, let’s keep things simple at first and use the standard configuration for now.

**8.** There is one generic that has to be set according to your FPGA board setup: the actual clock frequency of the top’s clock input signal (clk_i). Use the CLOCK_FREQUENCY generic to specify your clock source’s frequency in Hertz (Hz).

**9.** Attach the clock input clk_i to your clock source and connect the reset line rstn_i to a button of your FPGA board. Check whether it is low-active or high-active - the reset signal of the processor is low-active, so maybe you need to invert the input signal.

**10.** If possible, connected at least bit 0 of the GPIO output port gpio_o to a LED (see "Signal Polarity" note above).

**11.** Finally, if your are using the UART-based test setup (neorv32_testsetup_bootloader.vhd) connect the UART communication signals uart0_txd_o and uart0_rxd_i to the host interface (e.g. USB-UART converter).

**12.** Perform the project HDL compilation (synthesis, mapping, bitstream generation).

**13.** Program the generated bitstream into your FPGA and press the button connected to the reset signal.

**14.** Done! The LED at gpio_o(0) should be flashing now.

**15.** After the GCC toolchain for compiling RISC-V source code is ready (chapter General Software Framework Setup), you can advance to one of these chapters to learn how to get a software executable into your processor setup: * If you are using the neorv32_testsetup_approm.vhd setup: See section Installing an Executable Directly Into Memory. * If you are using the neorv32_testsetup_bootloader.vhd setup: See section Uploading and Starting of a Binary Executable Image via UART.
 ```
	After the GCC toolchain for compiling RISC-V source code is ready (chapter General Software Framework Setup), you can advance to one of these chapters to learn how to get a software executable into your processor setup: * If you are using the neorv32_testsetup_approm.vhd setup: See section Installing an Executable Directly Into Memory. * If you are using the neorv32_testsetup_bootloader.vhd setup: See section Uploading and Starting of a Binary Executable Image via UART.
  ```
  
  More specific result of testing setup can be found: https://stnolting.github.io/neorv32/ug/#_general_hardware_setup
  
  
***The software framework setup needs to be aware of the hardware configuration in order to permit executables to be truly executed on the NEORV32 Processor. The memory configuration is the main topic of this manual. Refer to the Enabling RISC-V CPU Extensions section to enable specific CPU ISA features.***
