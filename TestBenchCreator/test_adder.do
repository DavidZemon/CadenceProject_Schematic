# Adding wires
add wave sim:/Adder_Subtractor/op
add wave sim:/Adder_Subtractor/Ci
add wave sim:/Adder_Subtractor/A
add wave sim:/Adder_Subtractor/B
add wave sim:/Adder_Subtractor/S
add wave sim:/Adder_Subtractor/Co

# A=0 + B=0
force -drive sim:/Adder_Subtractor/op 0
force -drive sim:/Adder_Subtractor/A(0) 0
force -drive sim:/Adder_Subtractor/A(1) 0
force -drive sim:/Adder_Subtractor/A(2) 0
force -drive sim:/Adder_Subtractor/A(3) 0
force -drive sim:/Adder_Subtractor/B(0) 0
force -drive sim:/Adder_Subtractor/B(1) 0
force -drive sim:/Adder_Subtractor/B(2) 0
force -drive sim:/Adder_Subtractor/B(3) 0
force -drive sim:/Adder_Subtractor/Ci 0
run 100

# A=7 + B=4
force -drive sim:/Adder_Subtractor/op 0
force -drive sim:/Adder_Subtractor/A(0) 1
force -drive sim:/Adder_Subtractor/A(1) 1
force -drive sim:/Adder_Subtractor/A(2) 1
force -drive sim:/Adder_Subtractor/A(3) 0
force -drive sim:/Adder_Subtractor/B(0) 0
force -drive sim:/Adder_Subtractor/B(1) 0
force -drive sim:/Adder_Subtractor/B(2) 1
force -drive sim:/Adder_Subtractor/B(3) 0
force -drive sim:/Adder_Subtractor/Ci 0
run 100

# A=7 + B=3
force -drive sim:/Adder_Subtractor/op 0
force -drive sim:/Adder_Subtractor/A(0) 1
force -drive sim:/Adder_Subtractor/A(1) 1
force -drive sim:/Adder_Subtractor/A(2) 1
force -drive sim:/Adder_Subtractor/A(3) 0
force -drive sim:/Adder_Subtractor/B(0) 1
force -drive sim:/Adder_Subtractor/B(1) 1
force -drive sim:/Adder_Subtractor/B(2) 0
force -drive sim:/Adder_Subtractor/B(3) 0
force -drive sim:/Adder_Subtractor/Ci 1
run 100

# A=7 + B=0
force -drive sim:/Adder_Subtractor/op 0
force -drive sim:/Adder_Subtractor/A(0) 1
force -drive sim:/Adder_Subtractor/A(1) 1
force -drive sim:/Adder_Subtractor/A(2) 1
force -drive sim:/Adder_Subtractor/A(3) 0
force -drive sim:/Adder_Subtractor/B(0) 0
force -drive sim:/Adder_Subtractor/B(1) 0
force -drive sim:/Adder_Subtractor/B(2) 0
force -drive sim:/Adder_Subtractor/B(3) 0
force -drive sim:/Adder_Subtractor/Ci 0
run 100

# A=7 + B=0
force -drive sim:/Adder_Subtractor/op 0
force -drive sim:/Adder_Subtractor/A(0) 1
force -drive sim:/Adder_Subtractor/A(1) 1
force -drive sim:/Adder_Subtractor/A(2) 1
force -drive sim:/Adder_Subtractor/A(3) 0
force -drive sim:/Adder_Subtractor/B(0) 0
force -drive sim:/Adder_Subtractor/B(1) 0
force -drive sim:/Adder_Subtractor/B(2) 0
force -drive sim:/Adder_Subtractor/B(3) 0
force -drive sim:/Adder_Subtractor/Ci 1
run 100

# A=0 - B=0
force -drive sim:/Adder_Subtractor/op 1
force -drive sim:/Adder_Subtractor/A(0) 0
force -drive sim:/Adder_Subtractor/A(1) 0
force -drive sim:/Adder_Subtractor/A(2) 0
force -drive sim:/Adder_Subtractor/A(3) 0
force -drive sim:/Adder_Subtractor/B(0) 0
force -drive sim:/Adder_Subtractor/B(1) 0
force -drive sim:/Adder_Subtractor/B(2) 0
force -drive sim:/Adder_Subtractor/B(3) 0
force -drive sim:/Adder_Subtractor/Ci 0
run 100

# A=7 - B=0
force -drive sim:/Adder_Subtractor/op 1
force -drive sim:/Adder_Subtractor/A(0) 1
force -drive sim:/Adder_Subtractor/A(1) 1
force -drive sim:/Adder_Subtractor/A(2) 1
force -drive sim:/Adder_Subtractor/A(3) 0
force -drive sim:/Adder_Subtractor/B(0) 0
force -drive sim:/Adder_Subtractor/B(1) 0
force -drive sim:/Adder_Subtractor/B(2) 0
force -drive sim:/Adder_Subtractor/B(3) 0
force -drive sim:/Adder_Subtractor/Ci 0
run 100

# A=7 - B=3
force -drive sim:/Adder_Subtractor/op 1
force -drive sim:/Adder_Subtractor/A(0) 1
force -drive sim:/Adder_Subtractor/A(1) 1
force -drive sim:/Adder_Subtractor/A(2) 1
force -drive sim:/Adder_Subtractor/A(3) 0
force -drive sim:/Adder_Subtractor/B(0) 1
force -drive sim:/Adder_Subtractor/B(1) 1
force -drive sim:/Adder_Subtractor/B(2) 0
force -drive sim:/Adder_Subtractor/B(3) 0
force -drive sim:/Adder_Subtractor/Ci 0
run 100

# A=0 - B=1
force -drive sim:/Adder_Subtractor/op 1
force -drive sim:/Adder_Subtractor/A(0) 0
force -drive sim:/Adder_Subtractor/A(1) 0
force -drive sim:/Adder_Subtractor/A(2) 0
force -drive sim:/Adder_Subtractor/A(3) 0
force -drive sim:/Adder_Subtractor/B(0) 1
force -drive sim:/Adder_Subtractor/B(1) 0
force -drive sim:/Adder_Subtractor/B(2) 0
force -drive sim:/Adder_Subtractor/B(3) 0
force -drive sim:/Adder_Subtractor/Ci 0
run 100
