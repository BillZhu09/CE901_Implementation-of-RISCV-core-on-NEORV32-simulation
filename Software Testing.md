# Software Testing

Linux's compiler processing scripts can be used to execute the design flow in the ISE Design Suite. The 
ISE-integrated Tcl script interpreter's GUI's Tcl console is insufficiently powerful. Only different script 
instructions are combined into a graphical interface via the GUI interface. Tcl scripts are not used on 
ISE because some components require scripts that are distinct from Tcl. really well-liked. Tcl is now 
the only script that is supported on Vivado. Additionally, Tcl scripts that correspond to each operation 
can be run. Therefore, learning the Tcl scripting language will help you become more adept at using 
Vivado. Therefore, before we use the vivado, the tcl need to be modified by our own path on the linux. 

https://github.com/Digilent/Arty/blob/master/Projects/XADC_Demo/proj/create_project.tcl

All the value need to be changed to specific path, such: set fileset_constraints [glob 
/home/…/…/Vivado/Basys3constains/....xdc] Figure 4-1 shows the some details of my tcl file. With 
respect to the xorshift testing, It is an ordinary pseudo random number generator. Data has already been 
used to seed this generator (). The application Object() [code] method xorshift.constructor can be used 
to initialise a specialized generator if this is not appropriate. The methodologies can be used to create 
random data in both situations. random and.randomint

***1.xorshift.random()***
This algorithm would get a 64-bit double that is generated at random and has a value between [0, 1]. 
Thus, 0 denotes inclusiveness and 1 denotes exclusivity. This is the same as using Math.random ().
Most tasks may be accomplished using this manner, such as selecting something at random from any 
integer using this function.

***2. xorshift.randomint()***
This function outputs a 64-bit random value. Although 64-bit integers are not supported by JavaScript, 
the number is shown as an array with two entries that are big-endian in nature.
If high accuracy is desired, this approach is effective because the xorshift.random() method cannot do 
it because a 64-bit IEEE754 double only stores the 52 most important bits.

***3. xorshift.constructor***
Using a certain seed, a separate random number generator is created using this technique. This is helpful 
when evaluating software that uses random numbers and where getting reliable results is crucial.
Both random and randomint methods are available in a XorShift instance. The XorShift function 
Object() { [code] } is really used by the xorshift module.
When implementing the import syntax, it is helpful to be able to access the function Object() [code] 
using require XorShift
