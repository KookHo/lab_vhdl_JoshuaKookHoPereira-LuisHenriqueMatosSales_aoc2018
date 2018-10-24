onerror {exit -code 1}
vlib work
vcom -work work ExtensorDeSinal.vho
vcom -work work Waveform_Extensor_8_16.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ExtensorDeSinal_8_16_vhd_vec_tst
vcd file -direction ExtensorDeSinal.msim.vcd
vcd add -internal ExtensorDeSinal_8_16_vhd_vec_tst/*
vcd add -internal ExtensorDeSinal_8_16_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
