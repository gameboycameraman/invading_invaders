---
layout: page
title: Tutorial 1
permalink: /tutorial1/
---

# **Changing sprites**

Tutorial 2 can also be used to achieve the same goals, however, if all you want to change is the graphics then this is the quickest, easiest method.

All italic text is further information about the software or process, it’s not needed to make the hack work, but you might want to delve further than just achieving the hack.

**Pre-checks:**

* Completed all steps on the [Setup page](http://localhost:4000/setup/)
* You’re ready to have some fun hacking!!!


**Getting DOSBox ready:**

* Open up DOSBox by double clicking it. This will open up the DOS environment terminal.

￼ ![](/images/dosbox1.png?raw=true)

* You can see here the starting drive that is mounted is the Z drive, we need to mount our project folder instead, this is done by the command:

` MOUNT c ~/'path'/'project folder name' `

*In the image above, the project folder is called Atariprg, located on the Desktop, hence 'Desktop/Atariprg'. We are mounting it on the C drive. By default DOSBox uses Z drive.*

* Next, type `c:` into the DOSBox terminal window, this changes to the drive we just [mounted](http://whatis.techtarget.com/definition/mount).

* Now we are ready for the next step, running showgfx.

*We are using Macs, however, all these hacks can also be done on Microsoft machines (Although you’ll need a different emulator). Due to 2600 gfx being a 16 bit program it won’t run on modern MS-DOS systems, and due to it being a windows program they won’t run on Macs. This software allows us to run these programs, and having found no other software similar it was the only solution we found.*

**Disassembling with Editgfx:**

￼ ![](/images/dosbox2.png?raw=true)

* Still in DOSBox terminal, type:

`showgfx spcinvad.bin 0 4096 > spcinvad.txt`

N.b. If you ROM is called something different you should reference that name instead.

*This software extracts all the graphics information from the file given and returns it in a text file. The format for the above command is:*

`showgfx 'file_name.bin' 'start byte' 'end byte' > 'name_of_new_file_to_be_created.txt'`

*Unless you specifically know where the sprites you want to change are in the bytes it is recommended to cover the whole file, i.e. start byte should be 0 and end should be the file length, right click the file, select get info, and the size will be on the panel that pops up; however, for space invaders the file is 4096 bytes. This command will create the spcinvad.txt file in your project directory.*

**Editing the text file:**

Below, we refer to 'the table', by this we mean the lines that span from top to bottom either side of the `x`'s.

* Using either TextEdit or Atom open the text file, you should see something similar to the image below:

  ![](/images/text_file1.png?raw=true) ￼
N.b. This is the [ sprite](https://techterms.com/definition/sprite) for the players ship (upside down).
* Now comes the fun part, time to make some changes. Identify the sprite you want to change, in this example we will be changing the players ship; however, this method can be used for changing any sprite.

*The numbers on the left are hexadecimal code, referring to the games' bytes. Most games' sprites will be upside down. It is also wroth noting not all graphics are in one place and might be split up. As you can see in the picture, the players ship is stored at 0c0a - 0c13. The other alien sprites are located below the player ship and ending at 0ca9.*

* To change the sprites, put an `X` where you want the game to render the sprite, sticking to the same lines and width as the original sprite.

N.b. Table width, not sprite width. By comparing the two images you can see our sprite is wider than the original, but it still fits into the table.

  ![](/images/text_file2.png?raw=true)
* Once you have made your changes save the file. As you can see above, we have changed the ship into a stick-man.

**Reassemble the code:**

￼ ![](/images/dosbox3.png?raw=true)

* Into the DOSBox terminal, type:

`editgfx spcinvad.txt testspac.bin`

*The format for this command is:*

`editgfx 'text_file_name.txt' 'new_bin_file_name.bin'`

*It is recommended you call the file something other than the original name. One reason for this is because if something goes wrong you still have the original. If we left the last section blank, it would still create the file, but with the same name as the original, over-riding it. It alse means we can explicitly state the format of the file we want. This command reassembles the code into binary so that it can be played on the emulator again.*

**Try it out!!!**

* If you're using OpenEmu, navigate to the Atari 2600 section.
* Drag your new file into the 'Drag and Drop Games Here' section.
* In the bottom left of the window, click 'Resolve 1 issue'.
* Tick check your file name, then where it says 'Don't Import Selected', select Arati 2600, then 'Apply'.
* Finally, double click your file while in the Atari 2600 console section.
* If everything worked, you should be able to see your changes in game.

￼ ![](/images/space.png?raw=true)
