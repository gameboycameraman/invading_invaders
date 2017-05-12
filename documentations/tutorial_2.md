---
layout: page
title: Tutorial 2
permalink: /tutorial2/
---

# Changing Sprites (Tutorial 2)

This second method of changing the game's graphics is a little more complicated than tutorial 1, as it involves Assembly or ASM hacking. This method will allow you to directly manipulate the game's code and potentially modify anything within the game, such as gameplay, audio and levels.

Here is an overview of the steps involved in ASM hacking Space Invaders:
* Disassemble the ROM image.
* Locate the graphics in the code.
* Use an ASCII config file to further reveal commented representations of the graphics.
* Change the hex data statements.
* Assemble the ROM again.

### 1) Disassemble Space Invaders

Run the following command in your terminal:

```
distella -paf spcinvad.bin > spcinvad.src
```
By running Space Invaders through the disassembler Distella, you will create the source file needed to change the graphics.

(If the command above is not working for you, then directly drag the distella.exe into the terminal.)

Verify that the disassembly has been executed correctly, by reassembling the source file using DASM. Type the following command in your terminal:

```
dasm spcinvad.srv -f3 -otest1.bin
```
Check the size of the file test1.bin - it should be 4096 bytes, exactly the same as the original Space Invaders file. Run the test1.bin in the emulator to check that the game is playing as normal.

### 2) Locate graphics in the code

Now you will try to locate areas of the source code that are most likely to contain the graphics data.

Firstly, open the source file in a text editor, such as Notepad or Atom.

Search for .byte in the code, then note down the first and last address where .byte exists. In Space Invaders, these addresses should be FBFE-FD66 and FF4C-FFFF.

For example, here is an analysed line (line 1673) from the source file created from Distella:

| Data contained at each address   |  $03 |  $17 | $2B  |  $23 | $75 | $B4 |
|---|---|---|---|---|
|  Hexadecimal addresses    |  FD61 | FD62  | FD63  | FD64  | FD65| FD66 |

From left to right, the addresses increase by one in hexadecimal and each piece of data is held at a higher address than the last. (See glossary for further explanation on hexadecimal).

### 3) Create ASCII config file

You will now create a config file which will help you to view your source code in a way that will make the graphics data even clearer.

Using a text editor, create an ASCII config file called spcinvad.cfg containing only the following information:

```
GFX FBFE FD66
GFX FF4C FFFF
```
These lines in the config file contain the first and last .byte addresses

Use distella again to disassemble the binary file again, this time revealing code that has commented representations of the graphics, to make modifying the graphics easier. Run the following command in terminal (or drag the distella.exe file into terminal again if this does not work):

```
distella -paf -cspcinvad.cfg spcinvad.bin > spcinvad.src
```

Now if you view the new spcinvad.src file and search for the memory location 'FC0A' you should be able to see the Space Invaders spaceship:

```
.byte $FE ; |XXXXXXX | $FC0A
.byte $FE ; |XXXXXXX | $FC0B
.byte $7C ; | XXXXX  | $FC0C
.byte $FE ; |XXXXXXX | $FC0D
.byte $38 ; |  XXX   | $FC0E
.byte $38 ; |  XXX   | $FC0F
.byte $7C ; | XXXXX  | $FC10
.byte $38 ; |  XXX   | $FC11
.byte $38 ; |  XXX   | $FC12
.byte $10 ; |   X    | $FC13
```

The first hexadecimal number next to each .byte is the data contained at each byte, the commented 'X's are a visual representation of what each byte contains, and the hexadecimal numbers at the end of the line are the memory location of the byte.

### 4) Change the sprite graphical data

By changing the hex value after each .byte, you can alter the shape of the sprites.

Each 'X' represents a weighted binary digit. There are eight bits in a byte, and each row of up to eight X's represents one byte. In order to calculate each byte’s value, you need to add up each value with an X beneath it. For example, the bottom of the spaceship is stored in address FC0A, and has a value of FE:

<strong>Binary weighted bits</strong>

|  128 |  64 | 32  | 16  | 8  |4| 2 | 1 |
|---|---|---|---|---|
|  X |  X |  X | X  |  X | X | X | |

Adding up the numbers with an 'X' beneath them gives a total of 254, which means is FE when converted to hexadecimal. Each byte of graphical data must be converted to hexadecimal in this manner. There is no need to change the X representations, as they are merely comments with no bearing on the final bin file. Save your file.

### 5) Assemble the source code

Run the following in terminal:

```
dasm spcinvad.src -f3 -otest1.bin
```

Now your edited source file has been reassembled by DASM, and you can run your test1.bin file on an emulator to play Space Invaders with your modified sprites.
