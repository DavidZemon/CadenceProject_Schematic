# Adding wires
add wave sim:/testUnit/S
add wave sim:/testUnit/A
add wave sim:/testUnit/B
add wave sim:/testUnit/F
force -drive sim:/testUnit/A 0 0, 1 {50.0 ps} -r 100
force -drive sim:/testUnit/B 0 0, 1 {100.0 ps} -r 200
force -drive sim:/testUnit/S 0 0, 1 {200.0 ps} -r 400
run 400
