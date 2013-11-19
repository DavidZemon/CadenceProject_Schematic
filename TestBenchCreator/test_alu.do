# Adding wires
add wave sim:/ALU/Op
add wave sim:/ALU/Ci
add wave sim:/ALU/A
add wave sim:/ALU/B
add wave sim:/ALU/F
add wave sim:/ALU/Co
force -drive sim:/ALU/Ci 0

# A=0x00 & B=0x00
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 0
force -drive sim:/ALU/A(0) 0
force -drive sim:/ALU/A(1) 0
force -drive sim:/ALU/A(2) 0
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 0
force -drive sim:/ALU/B(3) 0
run 100

# A=0x05 & B=0x0C
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 0
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 0
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 1
force -drive sim:/ALU/B(3) 1
run 100

# A=0x0F & B=0x0F
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 0
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 1
force -drive sim:/ALU/B(0) 1
force -drive sim:/ALU/B(1) 1
force -drive sim:/ALU/B(2) 1
force -drive sim:/ALU/B(3) 1
run 100

# A=0x00 | B=0x00
force -drive sim:/ALU/Op(0) 1
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 0
force -drive sim:/ALU/A(0) 0
force -drive sim:/ALU/A(1) 0
force -drive sim:/ALU/A(2) 0
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 0
force -drive sim:/ALU/B(3) 0
run 100

# A=0x05 | B=0x0C
force -drive sim:/ALU/Op(0) 1
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 0
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 0
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 1
force -drive sim:/ALU/B(3) 1
run 100

# A=0x0F | B=0x0F
force -drive sim:/ALU/Op(0) 1
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 0
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 1
force -drive sim:/ALU/B(0) 1
force -drive sim:/ALU/B(1) 1
force -drive sim:/ALU/B(2) 1
force -drive sim:/ALU/B(3) 1
run 100

# ~(A=0x00 ^ B=0x00)
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 1
force -drive sim:/ALU/Op(2) 0
force -drive sim:/ALU/A(0) 0
force -drive sim:/ALU/A(1) 0
force -drive sim:/ALU/A(2) 0
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 0
force -drive sim:/ALU/B(3) 0
run 100

# ~(A=0x05 ^ B=0x0C)
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 1
force -drive sim:/ALU/Op(2) 0
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 0
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 1
force -drive sim:/ALU/B(3) 1
run 100

# ~(A=0x0F ^ B=0x0F)
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 1
force -drive sim:/ALU/Op(2) 0
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 1
force -drive sim:/ALU/B(0) 1
force -drive sim:/ALU/B(1) 1
force -drive sim:/ALU/B(2) 1
force -drive sim:/ALU/B(3) 1
run 100

# A=0x00 ^ B=0x00
force -drive sim:/ALU/Op(0) 1
force -drive sim:/ALU/Op(1) 1
force -drive sim:/ALU/Op(2) 0
force -drive sim:/ALU/A(0) 0
force -drive sim:/ALU/A(1) 0
force -drive sim:/ALU/A(2) 0
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 0
force -drive sim:/ALU/B(3) 0
run 100

# A=0x05 ^ B=0x0C
force -drive sim:/ALU/Op(0) 1
force -drive sim:/ALU/Op(1) 1
force -drive sim:/ALU/Op(2) 0
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 0
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 1
force -drive sim:/ALU/B(3) 1
run 100

# A=0x0F ^ B=0x0F
force -drive sim:/ALU/Op(0) 1
force -drive sim:/ALU/Op(1) 1
force -drive sim:/ALU/Op(2) 0
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 1
force -drive sim:/ALU/B(0) 1
force -drive sim:/ALU/B(1) 1
force -drive sim:/ALU/B(2) 1
force -drive sim:/ALU/B(3) 1
run 100

# A=0 + B=0
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 0
force -drive sim:/ALU/A(1) 0
force -drive sim:/ALU/A(2) 0
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 0
force -drive sim:/ALU/B(3) 0
force -drive sim:/ALU/Ci 0
run 100

# A=7 + B=4
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 1
force -drive sim:/ALU/B(3) 0
force -drive sim:/ALU/Ci 0
run 100

# A=7 + B=3
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 1
force -drive sim:/ALU/B(1) 1
force -drive sim:/ALU/B(2) 0
force -drive sim:/ALU/B(3) 0
force -drive sim:/ALU/Ci 1
run 100

# A=7 + B=0
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 0
force -drive sim:/ALU/B(3) 0
force -drive sim:/ALU/Ci 0
run 100

# A=7 + B=0
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 0
force -drive sim:/ALU/B(3) 0
force -drive sim:/ALU/Ci 1
run 100

# A=0 - B=0
force -drive sim:/ALU/Op(0) 1
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 0
force -drive sim:/ALU/A(1) 0
force -drive sim:/ALU/A(2) 0
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 0
force -drive sim:/ALU/B(3) 0
force -drive sim:/ALU/Ci 0
run 100

# A=7 - B=0
force -drive sim:/ALU/Op(0) 1
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 0
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 0
force -drive sim:/ALU/B(3) 0
force -drive sim:/ALU/Ci 0
run 100

# A=7 - B=3
force -drive sim:/ALU/Op(0) 1
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 1
force -drive sim:/ALU/B(1) 1
force -drive sim:/ALU/B(2) 0
force -drive sim:/ALU/B(3) 0
force -drive sim:/ALU/Ci 0
run 100

# A=0 - B=1
force -drive sim:/ALU/Op(0) 1
force -drive sim:/ALU/Op(1) 0
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 0
force -drive sim:/ALU/A(1) 0
force -drive sim:/ALU/A(2) 0
force -drive sim:/ALU/A(3) 0
force -drive sim:/ALU/B(0) 1
force -drive sim:/ALU/B(1) 0
force -drive sim:/ALU/B(2) 0
force -drive sim:/ALU/B(3) 0
force -drive sim:/ALU/Ci 0
run 100

# A=0 + 1
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 1
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 0
force -drive sim:/ALU/A(1) 0
force -drive sim:/ALU/A(2) 0
force -drive sim:/ALU/A(3) 0
run 100

# A=7 + 1
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 1
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 0
run 100

# A=3 + 1
force -drive sim:/ALU/Op(0) 0
force -drive sim:/ALU/Op(1) 1
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 0
force -drive sim:/ALU/A(3) 0
run 100

# B=0 + 1
force -drive sim:/ALU/Op(0) 1
force -drive sim:/ALU/Op(1) 1
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 0
force -drive sim:/ALU/A(1) 0
force -drive sim:/ALU/A(2) 0
force -drive sim:/ALU/A(3) 0
run 100

# B=7 + 1
force -drive sim:/ALU/Op(0) 1
force -drive sim:/ALU/Op(1) 1
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 1
force -drive sim:/ALU/A(3) 0
run 100

# B=3 + 1
force -drive sim:/ALU/Op(0) 1
force -drive sim:/ALU/Op(1) 1
force -drive sim:/ALU/Op(2) 1
force -drive sim:/ALU/A(0) 1
force -drive sim:/ALU/A(1) 1
force -drive sim:/ALU/A(2) 0
force -drive sim:/ALU/A(3) 0
run 100
