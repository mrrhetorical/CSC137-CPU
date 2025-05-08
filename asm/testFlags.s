MOVC R0 0
ADD R0 R0 R0

# Move flags to R1
MOVFR R0

# put 0b0010 into r3 for comparison (checking if zero and only zero set)
MOVC R3 2

# Compare via subtraction
SUB R3 R3 R0
BNZ ELSE
# if true then put 1 in r0
MOVC R0 1

# true so skip to halt
MOVC R7 1
AND R7 R7 R7
BNZ HALT

# if comparison was false then put 0 in r0 
ELSE:
MOVC R0 0

HALT:

BNZ HALT

