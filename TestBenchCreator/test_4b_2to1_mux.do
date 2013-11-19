# Adding wires
add wave sim:/testUnit/S
add wave sim:/testUnit/A
add wave sim:/testUnit/B
add wave sim:/testUnit/F
force -drive sim:/testUnit/A(0) 0
force -drive sim:/testUnit/A(1) 0
force -drive sim:/testUnit/A(2) 0
force -drive sim:/testUnit/A(3) 0
force -drive sim:/testUnit/B(0) 0
force -drive sim:/testUnit/B(1) 0
force -drive sim:/testUnit/B(2) 0
force -drive sim:/testUnit/B(3) 0
force -drive sim:/testUnit/S 0
run 100
force -drive sim:/testUnit/S 1
run 100
force -drive sim:/testUnit/A(0) 1
force -drive sim:/testUnit/A(1) 0
force -drive sim:/testUnit/A(2) 1
force -drive sim:/testUnit/A(3) 0
force -drive sim:/testUnit/S 0
run 100
force -drive sim:/testUnit/S 1
run 100
force -drive sim:/testUnit/B(0) 0
force -drive sim:/testUnit/B(1) 0
force -drive sim:/testUnit/B(2) 1
force -drive sim:/testUnit/B(3) 1
run 100
force -drive sim:/testUnit/A(0) 1
force -drive sim:/testUnit/A(1) 1
force -drive sim:/testUnit/A(2) 1
force -drive sim:/testUnit/A(3) 1
force -drive sim:/testUnit/S 0
run 100
force -drive sim:/testUnit/S 1
run 100
force -drive sim:/testUnit/B(0) 1
force -drive sim:/testUnit/B(1) 1
force -drive sim:/testUnit/B(2) 1
force -drive sim:/testUnit/B(3) 1
force -drive sim:/testUnit/S 1
run 100
