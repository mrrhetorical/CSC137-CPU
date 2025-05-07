From project specifications:

To streamline your workflow, you’ve been provided with a Python assembler called nisc.py. This tool takes your .asm source file and outputs a machine code file formatted for Logisim's ROM.

To assemble a file, run the following command from the terminal:

python3 nisc.py yourfile.asm > yourfile.hex

This will read your assembly source (yourfile.asm) and write the output as a plain text file (yourfile.hex) with one 12-bit word per line in Logisim-compatible format. You can then load this .hex file directly into your ROM using Logisim’s “Load Image” option.

Each time you test a new instruction or feature, you should update your .asm file, re-run the assembler, and reload the ROM. This lets you iterate quickly and confirm your hardware changes are working as expected.

For very short programs of only 1 to 3 instructions, you might find it faster to just leave off the file redirection and manually edit the ROM contents.