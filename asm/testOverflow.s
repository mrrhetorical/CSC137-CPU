MOVC R2 1
MOVC R0 1

MOVC R6 10

LOOP:
# left shift a bunch
LSL R0 R0
SUB R6 R6 R2
BNZ LOOP

# Add r0 to itself, shoudl carry now
ADD R0 R0 R0

# Move flags to R0
MOVFR R0

# put 0b1001 into r3 for comparison (checking if overflow set, also sign should change)
MOVC R3 9

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

