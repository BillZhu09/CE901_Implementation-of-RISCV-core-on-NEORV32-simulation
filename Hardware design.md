# Hardware design

The NEORV32 project features two minimalistic pre-configured test setups in rtl/test_setups. Both test setups only implement very basic processor and CPU features. The main difference between the two setups is the processor boot concept - so how to get a software executable into the processor:

**rtl/test_setups/neorv32_testsetup_approm.vhd**: this setup does not require a connection via UART. The software executable is "installed" into the bitstream to initialize a read-only memory. Use this setup if your FPGA board does not provide a UART interface.

**rtl/test_setups/neorv32_testsetup_bootloader.vhd**: this setups uses the UART and the default NEORV32 bootloader to upload new software executables. Use this setup if your board does provide a UART interface.

**1.** Create a new project with your FPGA EDA tool of choice.

**2.** Add all VHDL files from the project’s rtl/core folder to your project.
