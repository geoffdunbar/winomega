Omega for Windows v0.3 (0.90.4)
Port by Geoff Dunbar
Copyright 2019

Based on Omega 0.90.4
by Laurence R. Brothers and others

Uses PDCurses v3.9
https://pdcurses.org/

https://www.prankster.com/winomega
-------------------------------------------------------------------------------

Omega is a rare roguelike game, designed to be played on a character-mode
screen. I have compiled this version for Windows because (for whatever reason)
I was unable to get the old DOS version working.

See license-winomega.txt and LICENSE (for the LGPL v2.1) for more information 
about the terms of licensing Omega; I make no further claims beyond what is in 
there.

To get help on playing Omega type '?' in the game.

INSTALLATION

The install program installs omega into c:\WinOmega by default. winomega.exe is
a command line program; to run omega, either from a command line, or from the 
Windows start menu: 

  c:\WinOmega\winomega.exe - Starts a new game.
  c:\WinOmega\winomega.exe <filename> - Loads a previously saved game.

NOTES

I've only tested omega.exe on Windows 10, but it should work on anything from
Windows 7 on. As this is v0.3, there may be bugs (not to mention the
occasional bug in the main Omega program). Please drop me an email with any
bugs, or just drop me an email to let me know things are working right.

BUILD

The source code for Omega for Windows is available at the WinOmega website
(currently hosted on github).

My build steps:

1) Using Microsoft Visual Studio Community 2019
2) Put the source code in C:\dev\winomega
3) Put the PDCurses code in c:\dev\PDCurses-3.9
4) The output files end up in C:\dev\build\winomega
5) For the install program, use NSIS
6) Compile the script InstallWinOmega2.nsi
7) The install program is built as C:\dev\build\winomega\WinOmega.exe

If you want to put things in a different place, you'll have to modify some
paths in the VS solution and NSIS script, which is simple but perhaps
tedious.

LICENSING

There is some old information about licensing in "license.txt" and 
"license.old". However it is my belief that since 0.90.4 was released under
the terms of the LGPL, it is proper for Omega for Windows to also be
released under the LGPL. My intention in doing this is simplicity, not to
override the intentions of the creator of omega or any other contributors.

CREDITS

Windows port by Geoff Dunbar (gdunbar@prankster.com).

Omega written by Laurence R. Brothers. See omegalib\thanks.txt for a complete
  list of contributors.

PDCurses code from https://pdcurses.org/