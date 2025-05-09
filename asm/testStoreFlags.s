# Put 0b0010 into R0 (set zero flag)
MOVC R0 2
# Move R0 into flags
MOVRF R0
# Branch with new flags set
BNZ BRANCH

# IF the branch isn't executed, it is because the z flag was set properly (z = 1)s.
# Here I put 1 into R1 to show it worked. 
MOVC R0 1

## Halt loop
HALT:
MOVC R7 1
AND R7 R7 R7
HALT2:
BNZ HALT2


# Puts 1 in R0 if branch was executed. Only way is if flag was set from MOVRF instruction
BRANCH:
MOVC R0 0
BNZ HALT