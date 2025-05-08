# This builds powers of two from 2^0 to 2^10
# This demonstrates a simple for loop with Branching, movc, add, sub, and AND
MOVC R0 1
MOVC R1 10
FOR:
MOVC R2 1
ADD R0 R0 R0
SUB R1 R1 R2
BNZ FOR
QUIT:
MOVC R7 1
AND R7 R7 R7
BNZ QUIT