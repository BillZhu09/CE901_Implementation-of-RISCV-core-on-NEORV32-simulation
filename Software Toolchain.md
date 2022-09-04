# Software Toolchain

Toolchain setup tutorial shows: https://stnolting.github.io/neorv32/ug/#_software_toolchain_setup

## **1.1.** Building the Toolchain from Scratch
To build the toolchain by yourself you can follow the guide from the official https://github.com/riscv-collab/riscv-gnu-toolchain GitHub page. You need to make sure the generated toolchain fits the architecture of the NEORV32 core. To get a toolchain that even supports minimal ISA extension configurations, it is recommend to compile for rv32i only. Please note that this minimal ISA also provides further ISA extensions like m or c. Of course you can use a multilib approach to generate toolchains for several target ISAs at once.

**Configuring GCC build for rv32i**
```
riscv-gnu-toolchain$ ./configure --prefix=/opt/riscv --with-arch=rv32i --with-abi=ilp32
riscv-gnu-toolchain$ make -->
```

## **1.2. Downloading and Installing a Prebuilt Toolchain**
Alternatively, you can download a prebuilt toolchain.

### **1.2.1. Use The Toolchain I have Build**
I have compiled a GCC toolchain on a 64-bit x86 Ubuntu (Ubuntu on Windows, actually) and uploaded it to GitHub. You can directly download the according toolchain archive as single zip-file within a packed release from https://github.com/stnolting/riscv-gcc-prebuilt.

Unpack the downloaded toolchain archive and copy the content to a location in your file system (e.g. /opt/riscv). More information about downloading and installing my prebuilt toolchains can be found in the repository’s README.

### 1.2.2. Use a Third Party Toolchain
Of course you can also use any other prebuilt version of the toolchain. There are a lot RISC-V GCC packages out there - even for Windows. On Linux system you might even be able to fetch a toolchain via your distribution’s package manager.
