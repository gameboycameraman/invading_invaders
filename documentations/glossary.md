---
layout: page
title: Glossary
permalink: /glossary/
---

### ROM

A ROM image is a read-only computer file which contains a copy of data from a memory chip, often from video game cartridges. ROM images are often used as a means of preserving older games, which can then be run on modern computers through emulators. Once games have been made available in ROM format, it is possible for users to make modification to the game. ROM hacking can alter the game’s graphics, levels, audio, gameplay, and other elements.


### ASM hacking

One technique of ROM hacking is editing the game’s actual code through Assembly, or ASM hacking. Assembly refers to a type of programming language used for early video games. There is no status quo for ASM hacking, as the code varies widely from game to game, but most ASM hackers will begin by running the ROM through a disassembler. A disassembler is a computer programme that translates machine language into a human friendly version of the language, called assembly language.

Machine language is a set of instructions executed directly by a computer’s central processing unit, where each instruction performs a specific task on a unit of data. Numerical code, such as binary, is a low level representation of an assembled computer programme. The following is an example of machine language (binary, translated into hexadecimal), that takes a single 32-bit integer argument ’n’ and returns through eax the value 3n+1 if n is even and 4n-3 if n is odd,.

|     Machine language 			|		Assembly language    |
|---------------------------|------------------------|
| 0:   8b 4c 24 04 					| mov  ecx, [esp+4]      |
| 4:   8b c1       					| mov  eax, ecx          |
| 6:   99          					| cdq                    |
| 7:   33 c2       					| xor  eax, edx          |
| 9:   2b c2       					| sub  eax, edx          |
| b:   83 e0 01    					| and  eax, 1            |
| e:   33 c2       					| xor  eax, edx          |
| 10:   2b c2      					| sub  eax, edx          |
| 12:   8d 44 49 01					| lea  eax, [ecx+ecx*2+1]|
| 16:   74 07      					| je   01fh              |
| 18:   8d 04 8d fd ff ff ff| lea  eax, [ecx*4-3]    |
| 1f:   c3         					| ret                    |

When converted into assembly language, it is easier to understand that 8B is the first byte of a MOV instruction that moves from a memory location into a register.  The second byte, 4C, shows that the register we are moving into is ecx, and that the source of the move is determined from the next two bytes. The bytes are 24 and 04 meaning we add the contents of esp and 4 to find the source address. The assembly language shown in the example above uses the NASM syntax, but there are no set rules for what an assembly language should look like.

Once a ROM image is disassembled, a hacker may analyse the code and potentially modify anything within the game (within the limits of the gaming platform). ROM expansion may also be possible, whereby the total size of the ROM image is increased, making room for more content, and a larger game.

Once the source code of the game is modified, programs called assemblers can be used to translate the assembly language back into machine language. Assembly language programs use processor instructions (such as add, mov etc), as well as directives to tell the assembler which symbols and labels to import and export so the code can use code written in other files. Other directives are required to tell the assembler that some bytes need to be treated as data, not code, and are to eventually be stored in read-only segments when running.

The hacked game can then be run on an emulator.

### Emulators

An emulator is software that allows a host computer system to behave like another guest computer system. Emulation allows digital preservation to prevent digital objects from becoming obsolete. Emulators allow users to have access to any kind of application or operating system on a current platform, while the software runs as it did in its original environment.

Most emulators mimic a hardware architecture. Both the OS and the software will then be interpreted by the emulator, rather than being run by native hardware. An emulator is typically divided into the following modules that map roughly to the emulated computer’s subsystems:

	•	a CPU emulator (unless the target being emulated has the same CPU architecture as the host, in which case a virtual machine layer may be use instead)
	•	a memory subsystem module
	•	various input/output device emulators

Video game emulators often carry additional features that surpass the limitations of the original hardware, such as broader control compatibility, timescale control, clearer quality, and many more. Due to the high demand of playing old games on modern systems, commercial developers have used emulation as a method to repackage and reissue older games on newer consoles.

### Binary

In computing, binary refers to any digital encoding or decoding system in which there are exactly two possible states. The binary numbering system, is used to represent binary digits, or bits - the smallest units of data on a computer, where each bit has a single value of either 0 or 1. Executable (ready to run) files can often be identified by the name extension ‘.bin’

Binary numbers are expressed in the base-2 numeral system, where the digits’ weight increases by powers of 2 (rather than by powers of 10 in the decimal system).

### Hexadecimal

Hexadecimal is a base 16 numeral system which is widely used in programming as a more human friendly version of binary coded values. One hexadecimal legit represents four binary digits. For example, a single byte can have values ranging from 00000000 to 11111111 in binary form, but this can be represented more conveniently as 00 to FF in hexadecimal.

The numbers from decimal 0 to 15 are listed below in binary and hexadecimal form for comparison:

|Decimal |	  Binary |		Hexadecimal  |
|--------|-----------|-----------------|
|0			 |  0		     | 0               |
|1			 |  1		     | 1               |
|2			 |  10		   | 2               |
|3			 |  11		   | 3               |
|4			 |  100		   | 4               |
|5			 |  101		   | 5               |
|6			 |  110		   | 6               |
|7			 |  111		   | 7               |
|8			 |  1000		 | 8               |
|9			 |  1001		 | 9               |
|10	     |  1010		 | A               |
|11		   |  1011		 | B               |
|12		   |  1100		 | C               |
|13		   |  1101		 | D               |
|14		   |  1110		 | E               |
|15		   |  1111		 | F               |
