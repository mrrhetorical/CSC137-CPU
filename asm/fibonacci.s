MOVC R4 1

MOVC R0 1
MOVC R1 1

# loop counter. Calculates the (3 + 15)th fibbonacci number by the end where f(0, 1, 2, ..., n) = 0, 1, 1, ..., f(n)
# this is fun bc this is the largest fibonacci number we can compute with a signed interpretation.
MOVC R2 15

LOOP:
# Move R0 into a temp register R3
AND R3 R0 R0 
# Add the previous number R1 to the current R0 and store it in R0
ADD R0 R0 R1
# Make the initial value of R0 the new previous numbner
AND R1 R3 R3

# Subtract 1 from loop counter
SUB R2 R2 R4
BNZ LOOP

# Halt loop
HALT:
MOVC R7 1
AND R7 R7 R7
BNZ HALT
