//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
What are some of the key design philosophies of the Linux operating system?
///////////////////////////////////////////////////////////////////////////////

- linux seems to be incredibly secure, minimal, and stable. It is open source and free. it seems to be a highly democratic environment that's for and by everyone. 
- it seems to be very simple, and lightweight. After reading a bit, I'm even considering installing it onto an older iMac i have... i may even set up a virtual machine on my macbook pro (as soon as it arrives).

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
What is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
///////////////////////////////////////////////////////////////////////////////

a VPS is for all purposes a computer running a fully defined operating system. The difference is that the VPS isn't an acutaly piece of hardware in and of itself... instead, it's a dedicated piece of memory that's sectioned out of a larger chunk to run as if it were physically separate. 

Advantages:
- The virtual server is vastly cheaper than a complete, physical setup.
- because the service is part of a business model/provided service, the large companies running them have the ability and motivation to provide higher security, dependability, memory redundancy,and other safety measures that make the option of VPSs far more viable than not.
- physically speaking, VPSs are far more environmentally friendly because a separate machine is not built for every server.
- full accessibility to your machine from the ground up
- changing the size of the system is no problem. because it's all virtual, there's no problem with expanding or cutting down quickly

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Why is it considered a bad idea to run programs as the root user on a Linux system?
///////////////////////////////////////////////////////////////////////////////

copied from : http://askubuntu.com/questions/16178/why-is-it-bad-to-login-as-root

by lazyPower:
It defeats the security model that's been in place for years. Applications are meant to be run with non-administrative security (or as mere mortals) so you have to elevate their privileges to modify the underlying system. For example you wouldn't want that recent crash of Rhythmbox to wipe out your entire $HOME/Music directory due to a bug. Or that vulnerability that was just posted in ProFTPD to allow an attacker to gain a ROOT shell.

Its just good practice on any operating system to run your applications on a user level and leave administrative tasks to the root user, and only on a per-need basis.

by Vojtech Trefny: 
You're logged as root = all applications are running with root privilegies -- every vulnerability in Firefox, Flash, OpenOffice etc. now can destroy your system, because possible viruses now have access everywhere. Yes, there are only few viruses for Ubuntu/Linux, but it's also because of good security and default unprivileged user.
It's not only about viruses -- small bug in an application could erase some system files or...
When your're logged as root, you can do everything -- the system won't ask! Do you want to format this disk? Ok, just one click and it's done, because you're root and you know what you're doing...