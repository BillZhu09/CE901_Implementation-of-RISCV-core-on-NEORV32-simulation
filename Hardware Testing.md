# Hardware Testing

After the software testing successful, the hardware testing board need to be connected. In this project, 
Basys3 board will be applied by vivado, and show some results on it. In order to match the entity file 
(.vhd), constrain file (.xdc) has to be modified. The software coding is based on the arty-a7-35 board, 
but it is very difficult to get at this moment, and it is also very expensive. However, Basys3 board is a 
fundamental teaching board, the structure extremely the same with arty-a7-35 board. 
Replace the locations of each interface in the original arty-a7-35 xdc file with the basys3 interface 
model after comparing the relevant structural diagrams of the two existing boards to determine the 
positions of all associated ports. Finally, remove the "#" from each line of the source code to enable 
all essential parts before execution.

The built test was then performed on the arty-a7-35 version of the NEORV32 core after the 
simulation run for a particular NEORV32 core version was complete. The test application is copied 
into the processor's internal memory during the NEORV32 core simulation so that the programme can 
begin to run there. Nevertheless, the NEORV32 processor's arty-a7-35 variant employs a tiny driver 
from which the programme executable can be installed. This is due to the fact that, after serial contact 
with the Arty-A7-35 is achieved, the benchmark can be manually initiated. The PmodB inputs that 
contain the NEORV32's UART signals required an appropriate UART receiver to be connected in 
ability to connect with the bootloader on the NEORV32 CPU.
