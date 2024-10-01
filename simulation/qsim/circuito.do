onerror {quit -f}
vlib work
vlog -work work circuito.vo
vlog -work work circuito.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.circuito_vlg_vec_tst
vcd file -direction circuito.msim.vcd
vcd add -internal circuito_vlg_vec_tst/*
vcd add -internal circuito_vlg_vec_tst/i1/*
add wave /*
run -all
