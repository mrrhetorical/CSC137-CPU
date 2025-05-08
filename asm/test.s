# Initialize
MOVC R1 5       # R1 = 5
MOVC R2 3       # R2 = 3

# ADD R3 = R1 + R2 = 8
ADD R3 R1 R2
MOV R0 R3       # Output: 8

# SUB R4 = R1 - R2 = 2
SUB R4 R1 R2
MOV R0 R4       # Output: 2

# AND R5 = R1 & R2 = 1
AND R5 R1 R2
MOV R0 R5       # Output: 1

# OR R6 = R1 | R2 = 7
OR R6 R1 R2
MOV R0 R6       # Output: 7

# NOT R3 = ~R1
NOT R3 R1
MOV R0 R3       # Output: ~5

# LSL R4 = R1 << 1 = 10
LSL R4 R1 1
MOV R0 R4       # Output: 10

# LSR R4 = R1 >> 1 = 2
LSR R4 R1 1
MOV R0 R4       # Output: 2

# ASAR R4 = R1 >>> 1 (arithmetic shift)
ASAR R4 R1 1
MOV R0 R4       # Output: 2 (if sign bit stays)

# MOVFR (read flags) → R5
MOVFR R5
MOV R0 R5       # Output flags

# MOVRF (write flags) → set NZCV to 0b1010 (N and C set)
MOVC R5 10      # 0b1010 (N and C set)
MOVRF R5
MOVFR R6
MOV R0 R6       # Output flags to verify

# Test BNZ (only jumps if Z ≠ 1)
MOVC R7 1
SUB R7 R7 R7    # R7 = 0 → sets Z
BNZ SKIP        # Should NOT branch (Z == 1)
MOVC R0 10      # Skip setting R0 to 10 if branch is taken

# SKIP will only execute if Z ≠ 1
SKIP:
MOVC R0 10      # Set R0 to 10 if Z flag was NOT set (valid 6-bit value)

# Halt (infinite loop)
HALT:
MOVC R7 1
AND R7 R7 R7
BNZ HALT
