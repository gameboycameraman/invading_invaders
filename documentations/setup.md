---
layout: page
title: Set up
permalink: /setup/
---

# **Set up**

First thing needed is an empty project folder.

It is worth noting there are two tutorials on this page, both using different methods. Tutorial 1 is much simpler than the second, but doesn't allow for other hacks, apart from changing the graphics. Tutorial 1 is simpler as the process of changing the sprite in tutorial 2 involves more processes and some maths.


Each software mentioned below will either have an 'I' &/or 'II' depending which tutorial the software is needed for.

If using the second tutorial you will also need to navigate into this folder in your terminal. If you are un-familiar with the terminal, you can find basic commands here: [https://gist.github.com/poopsplat/7195274](https://gist.github.com/poopsplat/7195274)
Terminal is necessary because all the commands needed will be entered here.




**Text Editor - Atom ( I & II )**
	[https://atom.io/](https://atom.io/)

Download and follow instructions on website.

This is a text editor that we used to change the files, also a nice program for general code writing, However, TextEdit can also be used instead.

**Emulator - OpenEMU (Only for Macs) ( I & II )**
	[http://openemu.org/](http://openemu.org/)

Download from site and open OpenEMU

This is an emulator used to load and play the ROMS. See [Glossary](http://localhost:4000/glossary/)

**Rom - Space Invaders  (I & II )**
	[http://www.atariage.com/software_page.html?SoftwareLabelID=459](http://www.atariage.com/software_page.html?SoftwareLabelID=459)

Download and place the file into your project folder.

This is the ROM used to play the game, and the file we will be editing.

**DosBox - DOS x86 emulator ( I )**
	[https://www.dosbox.com/download.php?main=1](https://www.dosbox.com/download.php?main=1)

Download and open the file. Move DOSBox to the project folder.

This software is used to run windows programs on a Mac. Particularly Microsoft PCs can’t open the software listed below as they are 16 bit.

**2600 gfx ( I )**
	[https://www.orphanedgames.com/APF/apf_programming/apf_programming_tools/apf_programming_tools.html](https://www.orphanedgames.com/APF/apf_programming/apf_programming_tools/apf_programming_tools.html) (Top link)

Download and place showgfx and editgfx in the project folder. These programs will need to be run through DOSBox.

These programs allow you to take a .bin file and transfer it to a .txt file. Allowing you to change the sprites, Editgfx allows you to re-assemble the code into a .bin file so that you can run it on an emulator.

**Distella ( II )**
	[http://distella.sourceforge.net](https://www.orphanedgames.com/APF/apf_programming/apf_programming_tools/apf_programming_tools.html)

Download and navigate to the OS X folder. Place distella.exe into your project folder.

This program allows you to disassemble the code into the source code, a .src file. This goes further than just looking at the graphics code like 2600 gfx does. This allows you to delve into the code on a wider level, allowing you to change much more.

**Dasm ( II )**

Into your terminal type: `brew install dasm`

Dasm allows you to reassemble the code into a .bin file, ready to be played on an emulator.
