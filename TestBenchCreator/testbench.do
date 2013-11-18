# Adding wires
add wave sim:/alu/Op
add wave sim:/alu/Ci
add wave sim:/alu/A
add wave sim:/alu/B
add wave sim:/alu/F
add wave sim:/alu/Co
force sim:/alu/Ci 0

# A=0x00 & B=0x00
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 0
force sim:/alu/A(0) 0
force sim:/alu/A(1) 0
force sim:/alu/A(2) 0
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 0
force sim:/alu/B(3) 0
run 100

# A=0x05 & B=0x0C
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 0
force sim:/alu/A(0) 1
force sim:/alu/A(1) 0
force sim:/alu/A(2) 1
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 1
force sim:/alu/B(3) 1
run 100

# A=0x0F & B=0x0F
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 0
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 1
force sim:/alu/A(3) 1
force sim:/alu/B(0) 1
force sim:/alu/B(1) 1
force sim:/alu/B(2) 1
force sim:/alu/B(3) 1
run 100

# A=0x00 | B=0x00
force sim:/alu/Op(0) 1
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 0
force sim:/alu/A(0) 0
force sim:/alu/A(1) 0
force sim:/alu/A(2) 0
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 0
force sim:/alu/B(3) 0
run 100

# A=0x05 | B=0x0C
force sim:/alu/Op(0) 1
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 0
force sim:/alu/A(0) 1
force sim:/alu/A(1) 0
force sim:/alu/A(2) 1
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 1
force sim:/alu/B(3) 1
run 100

# A=0x0F | B=0x00
force sim:/alu/Op(0) 1
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 0
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 1
force sim:/alu/A(3) 1
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 0
force sim:/alu/B(3) 0
run 100

# ~(A=0x00 ^ B=0x00)
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 1
force sim:/alu/Op(2) 0
force sim:/alu/A(0) 0
force sim:/alu/A(1) 0
force sim:/alu/A(2) 0
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 0
force sim:/alu/B(3) 0
run 100

# ~(A=0x05 ^ B=0x0C)
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 1
force sim:/alu/Op(2) 0
force sim:/alu/A(0) 1
force sim:/alu/A(1) 0
force sim:/alu/A(2) 1
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 1
force sim:/alu/B(3) 1
run 100

# ~(A=0x0F ^ B=0x0F)
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 1
force sim:/alu/Op(2) 0
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 1
force sim:/alu/A(3) 1
force sim:/alu/B(0) 1
force sim:/alu/B(1) 1
force sim:/alu/B(2) 1
force sim:/alu/B(3) 1
run 100

# A=0x00 ^ B=0x00
force sim:/alu/Op(0) 1
force sim:/alu/Op(1) 1
force sim:/alu/Op(2) 0
force sim:/alu/A(0) 0
force sim:/alu/A(1) 0
force sim:/alu/A(2) 0
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 0
force sim:/alu/B(3) 0
run 100

# A=0x05 ^ B=0x0C
force sim:/alu/Op(0) 1
force sim:/alu/Op(1) 1
force sim:/alu/Op(2) 0
force sim:/alu/A(0) 1
force sim:/alu/A(1) 0
force sim:/alu/A(2) 1
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 1
force sim:/alu/B(3) 1
run 100

# A=0x0F ^ B=0x0F
force sim:/alu/Op(0) 1
force sim:/alu/Op(1) 1
force sim:/alu/Op(2) 0
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 1
force sim:/alu/A(3) 1
force sim:/alu/B(0) 1
force sim:/alu/B(1) 1
force sim:/alu/B(2) 1
force sim:/alu/B(3) 1
run 100

# A=0 + B=0
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 0
force sim:/alu/A(1) 0
force sim:/alu/A(2) 0
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 0
force sim:/alu/B(3) 0
force sim:/alu/Ci 0
run 100

# A=7 + B=4
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 1
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 1
force sim:/alu/B(3) 0
force sim:/alu/Ci 0
run 100

# A=7 + B=3
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 1
force sim:/alu/A(3) 0
force sim:/alu/B(0) 1
force sim:/alu/B(1) 1
force sim:/alu/B(2) 0
force sim:/alu/B(3) 0
force sim:/alu/Ci 1
run 100

# A=7 + B=0
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 1
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 0
force sim:/alu/B(3) 0
force sim:/alu/Ci 0
run 100

# A=7 + B=0
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 1
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 0
force sim:/alu/B(3) 0
force sim:/alu/Ci 1
run 100

# A=0 - B=0
force sim:/alu/Op(0) 1
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 0
force sim:/alu/A(1) 0
force sim:/alu/A(2) 0
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 0
force sim:/alu/B(3) 0
run 100

# A=7 - B=0
force sim:/alu/Op(0) 1
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 1
force sim:/alu/A(3) 0
force sim:/alu/B(0) 0
force sim:/alu/B(1) 0
force sim:/alu/B(2) 0
force sim:/alu/B(3) 0
run 100

# A=7 - B=3
force sim:/alu/Op(0) 1
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 1
force sim:/alu/A(3) 0
force sim:/alu/B(0) 1
force sim:/alu/B(1) 1
force sim:/alu/B(2) 0
force sim:/alu/B(3) 0
run 100

# A=0 - B=1
force sim:/alu/Op(0) 1
force sim:/alu/Op(1) 0
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 0
force sim:/alu/A(1) 0
force sim:/alu/A(2) 0
force sim:/alu/A(3) 0
force sim:/alu/B(0) 1
force sim:/alu/B(1) 0
force sim:/alu/B(2) 0
force sim:/alu/B(3) 0
run 100

# A=0 + 1
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 1
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 0
force sim:/alu/A(1) 0
force sim:/alu/A(2) 0
force sim:/alu/A(3) 0
run 100

# A=7 + 1
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 1
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 1
force sim:/alu/A(3) 0
run 100

# A=3 + 1
force sim:/alu/Op(0) 0
force sim:/alu/Op(1) 1
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 0
force sim:/alu/A(3) 0
run 100

# B=0 + 1
force sim:/alu/Op(0) 1
force sim:/alu/Op(1) 1
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 0
force sim:/alu/A(1) 0
force sim:/alu/A(2) 0
force sim:/alu/A(3) 0
run 100

# B=7 + 1
force sim:/alu/Op(0) 1
force sim:/alu/Op(1) 1
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 1
force sim:/alu/A(3) 0
run 100

# B=3 + 1
force sim:/alu/Op(0) 1
force sim:/alu/Op(1) 1
force sim:/alu/Op(2) 1
force sim:/alu/A(0) 1
force sim:/alu/A(1) 1
force sim:/alu/A(2) 0
force sim:/alu/A(3) 0
run 100
