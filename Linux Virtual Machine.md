# Linux Virtual Machine

The following tutorial is from :https://www.open.edu/openlearn/pluginfile.php/729860/mod_resource/content/2/2.2.4.6%20Lab%20-%20Install%20a%20Linux%20Virtual%20Machine%20%28Optional%29.pdf

## Part 1: Prepare a Computer for Virtualization
In Part 1, you will download and install virtualization software, and acquire a bootable image of a Linux
distribution.

Step 1: Download and install the free VMware player.
There are two excellent virtualization programs that you can download and install for free, VMware Player and
VirtualBox. In this lab, you will use the VMware player.

  **a.** Go to http://vmware.com, hover the cursor over Downloads, and search for Free Product Downloads.

  **b.** Under Free Product Downloads, click Player.
The VMware Player has 32-bit and 64-bit versions for Windows and Linux. To download the software, you
must register a free user account with VMware.
Note: The Linux version of VMware Player might work on Mac OS X; if not, http://virtualbox.org has a free
version of its VirtualBox software that will run on Mac OS X.

  **c.** When you have downloaded the VMware Player installation file, run the installer and accept the default
installation settings.

## Step 2: Download a bootable image of Linux.
You need an operating system to install on your virtual machine’s virtual hardware. Linux is a suitable choice
for an operating system, because most of the distributions are free to download and run. It also allows you to
explore an operating system that might be unfamiliar to you.

**a.** To download Linux, you first must select a distribution such as Mint, Ubuntu, Fedora, Suse, Debian, or
CentOS. (There are many others to choose from.) In this lab, the instructions follow an installation of
Linux Mint.

**b.** Go to http://linuxmint.com, hover over the Download button, and click Linux Mint 16 (or current version
number).

**c.** Scroll down the page until you see the version of the Mint code name, Cinnamon (or the current code
name). Choose either the 32-bit or 64-bit version, depending on your current operating system platform,
and click the link.

**d.** A new web page will appear. Select a download mirror site from which to download the operating system.
Click a mirror site to activate the Linux file download. When prompted by the browser, choose to save the
Linux .iso file to a local directory.
**e.** When the file has finished downloading, you should have a Linux Mint .iso bootable image.

## Part 2: Create a Virtual Machine

In Part 2, using the VMware Player, you will create a virtual machine and customize its virtual hardware.
Then, using the Linux Mint .iso file that you downloaded in Part 1, you will install the Linux Mint operating
system on the virtual machine.
Step 1: Create a virtual computer and customize the virtual hardware.

**a.** Open VMware Player, and click Create a New Virtual Machine.

**b.** A new window will appear. Select I will install the operating system later. The virtual machine will be
created with a blank hard disk option. Click Next.

**c.** A new window will appear. Select Linux as the guest operating system. Under version, you may notice
that Mint is not listed. In this case, select an alternate Linux distribution, one that is closely related to Mint
(like Ubuntu). Lastly, select either the 32-bit or 64-bit version and click Next.

**d.** A new window will appear. Select a name and storage location for the virtual machine.

**e.** A new window will appear. Select the maximum size of the virtual hard drive storage. You can also decide
whether or not to store the virtual hard drive in a single file or in multiple files.

**f.** When a new window appears, click Finish to finish creating the virtual machine hardware, or click
Customize Hardware to customize the virtual hardware. For example, you can specify the amount of
RAM, how many CPU cores you want, and add additional drives and peripheral components.

**g.** When you have customized and completed the process, you are now ready to run your virtual machine
and install an operating system.

## Step 2: Install the Linux operating system on the virtual computer.

To install from an .iso bootable image file, complete the following steps:

**a.** In VMware Player, click Edit virtual machine settings. If you have multiple virtual machines created, you
must first select which one you intend to edit.

**b.** In the pop-up window, under the Hardware tab, select CD/DVD (SATA), and on the right side, select the Use ISO image file option, and click Browse to search through your file
system for the Linux Mint .iso image file downloaded in Part 1.
Selecting the Linux .iso file causes it to be automatically mounted to the CD/DVD drive when the virtual
machine boots, which, in turn, causes the system to boot and run the Linux installation image.

**c.** Select Network Adapter, and click OK.
The network adapter is currently set to NAT mode, which allows your virtual machine to access the
network through the host computer system by translating all Internet requests through the VMware player,
much like a gateway router. This gives your virtual machine a private network address separate from your
home network.

**d.** When you are finished click OK.

**e.** Click Play virtual machine to launch your virtual machine and boot to Linux.
When the boot process has completed you should be presented with a Linux Mint desktop.

**f.** To permanently install Linux Mint on the virtual machine hard disk drive, on the desktop,
double-click the Install Linux Mint disk icon and follow the installation procedure.
During the installation, you will be presented with a warning message that installing to the drive will erase
everything on the disk drive; this refers to the virtual disk drive, not the host computer physical disk drive.

**g.** When you have finished the installation procedure, you should have a Linux Mint virtual machine that you
can run in a window alongside your host computer system.
