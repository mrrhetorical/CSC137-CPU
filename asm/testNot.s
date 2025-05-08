# Put 11 into r0
MOVC R0 11

# Put not 11 into r1
NOT R1 R0

# Add 1 into R1, complete the 2's compliment
MOVC R2 1
ADD R1 R1 R2

# Add the 2's compliment using !R0 + 1 from R1 and put result in R3. If not zero, they are not equal.
ADD R3 R1 R0

BNZ OOPS

MOVC R0 1

HALT:
MOVC R7 1
AND R7 R7 R7

HALT2:
BNZ HALT2


OOPS:
# this shouldn't happen if working properly
MOVC R0 0

# Jump back to halt
MOVC R7 1
AND R7 R7 R7
BNZ HALT