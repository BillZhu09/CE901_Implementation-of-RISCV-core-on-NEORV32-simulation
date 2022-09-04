set board "arty-a7-35"

# Create and clear output directory
set outputdir work
file mkdir $outputdir

set files [glob -nocomplain "$outputdir/*"]
if {[llength $files] != 0} {
    puts "deleting contents of $outputdir"
    file delete -force {*}[glob -directory $outputdir *]; # clear folder contents
} else {
    puts "$outputdir is empty"
}

switch $board {
  "arty-a7-35" {
    set a7part "xc7a35ticsg324-1L"
    set a7prj ${board}-test-setup
  }
}

# Create project
create_project -part $a7part $a7prj $outputdir

set_property SEVERITY {Warning} [get_drc_checks NSTD-1]

set_property SEVERITY {Warning} [get_drc_checks UCIO-1]

set_property board_part digilentinc.com:${board}:part0:1.0 [current_project]
set_property target_language VHDL [current_project]

# Define filesets

## Core: NEORV32
add_files [glob /home/bill/RISCV/neorv32-setups-main_code/neorv32/rtl/core/*.vhd] /home/bill/RISCV/neorv32-setups-main_code/neorv32/rtl/core/mem/neorv32_dmem.default.vhd /home/bill/RISCV/neorv32-setups-main_code/neorv32/rtl/core/mem/neorv32_imem.default.vhd
set_property library neorv32 [get_files [glob /home/bill/RISCV/neorv32-setups-main_code/neorv32/rtl/core/*.vhd]]
set_property library neorv32 [get_files [glob /home/bill/RISCV/neorv32-setups-main_code/neorv32/rtl/core/mem/neorv32_*mem.default.vhd]]

## Design: processor subsystem template, and (optionally) BoardTop and/or other additional sources
set fileset_design /home/bill/RISCV/neorv32-setups-main_code/neorv32/rtl/test_setups/neorv32_test_setup_bootloader.vhd

## Constraints
set fileset_constraints [glob /home/bill/RISCV/neorv32-setups-main_code/constraints/board/Arty-A7-35T/Bus.SPI.xdc]
set fileset_constraints [glob /home/bill/RISCV/neorv32-setups-main_code/constraints/board/Arty-A7-35T/Clock.SystemClock.xdc]
set fileset_constraints [glob /home/bill/RISCV/neorv32-setups-main_code/constraints/board/Arty-A7-35T/GPIO.Button.Special.xdc]
set fileset_constraints [glob /home/bill/RISCV/neorv32-setups-main_code/constraints/board/Arty-A7-35T/GPIO.LED.RGB.xdc]
set fileset_constraints [glob /home/bill/RISCV/neorv32-setups-main_code/constraints/board/Arty-A7-35T/GPIO.LED.xdc]
set fileset_constraints [glob /home/bill/RISCV/neorv32-setups-main_code/constraints/board/Arty-A7-35T/USB_UART.xdc]

set fileset_constraints [glob /home/bill/RISCV/neorv32-setups-main_code/vivado/arty-a7-test-setup/Arty-A7-35-Master.xdc]

## Simulation-only sources
set fileset_sim [list /home/bill/RISCV/neorv32-setups-main_code/neorv32/sim/simple/neorv32_tb.simple.vhd /home/bill/RISCV/neorv32-setups-main_code/neorv32/sim/simple/uart_rx.simple.vhd]

# Add source files

## Design
add_files $fileset_design

## Constraints
add_files -fileset constrs_1 $fileset_constraints

## Simulation-only
add_files -fileset sim_1 $fileset_sim

# Run synthesis, implementation and bitstream generation
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
