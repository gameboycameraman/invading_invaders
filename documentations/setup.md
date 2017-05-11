Set up

First thing needed is an empty project folder. You will also want to navigate into this folder in your terminal. If you are un-familiar with the terminal, you can find basic commands here: https://gist.github.com/poopsplat/7195274
It is worth noting we use two methods, see tutorials section for further clarification; each software mentioned below will either have an 'I' or 'II' depending which method the software is needed for.

Emulator - OpenEMU (Only for Macs) ( I & II )
	http://openemu.org/

	Download from site and open OpenEMU

	This is an emulator used to load and play the ROMS.

Rom - Space Invaders  (I & II )
	http://www.atariage.com/software_page.html?SoftwareLabelID=459

	Download and place into your project folder.

	This is the ROM used to play the game, and the file we will be editing.

DosBox - DOS x86 emulator ( I )
	https://www.dosbox.com/download.php?main=1

	Download and open the file. Move DOSBox to the project folder.

	This software is used to run windows programs on a Mac. Particularly useful as modern Microsoft pc’s can’t open the software listed below as they are 16 bit.

2600 gfx ( I )
	https://www.orphanedgames.com/APF/apf_programming/apf_programming_tools/apf_programming_tools.html (Top link)

	Download and place showgfx and editgfx in the project folder. These programs will need to be run through DOSBox.

	These programs allow you to take a .bin file and transfer it to a .txt file. Allowing you to change the sprites, Editgfx allows you to re-assemble the code into a .bin file so it’s runnable on an emulator

Distella ( II )
	http://distella.sourceforge.net

	Download and navigate to the OS X folder. Place distella.exe into your project folder.

	This program allows you to disassemble the code into the source code, a .src file. This goes further than just looking at the graphics code like 2600 gfx does. This allows you to delve into the code on a wider level, allowing you to change much more.

Dasm ( II )

	Into your terminal type: 'brew install dasm'

	Dasm allows you to reassemble the code into a .bin file, ready to be played on an emulator.
