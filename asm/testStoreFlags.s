# Put 0b0100 into R0
MOVC R0 4
# Move R0 into flags
MOVRF R0
# Branch with new flags set
BNZ BRANCH

# IF the branch isn't executed, the program will halt with the value 4 still in R0
HALT:
MOVC R7 1
AND R7 R7 R7
HALT2:
BNZ HALT2


# Puts 1 in R0 if branch was executed. Only way is if flag was set from MOVRF instruction
BRANCH:
MOVC R0 1
BNZ HALT