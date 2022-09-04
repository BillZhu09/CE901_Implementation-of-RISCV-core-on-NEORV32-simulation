# Software Toolchain

Toolchain setup tutorial shows: https://stnolting.github.io/neorv32/ug/#_software_toolchain_setup

## **1.1.** Building the Toolchain from Scratch
To build the toolchain by yourself you can follow the guide from the official https://github.com/riscv-collab/riscv-gnu-toolchain GitHub page. You need to make sure the generated toolchain fits the architecture of the NEORV32 core. To get a toolchain that even supports minimal ISA extension configurations, it is recommend to compile for rv32i only. Please note that this minimal ISA also provides further ISA extensions like m or c. Of course you can use a multilib approach to generate toolchains for several target ISAs at once.

<!-- riscv-gnu-toolchain$ ./configure --prefix=/opt/riscv --with-arch=rv32i --with-abi=ilp32
riscv-gnu-toolchain$ make -->
