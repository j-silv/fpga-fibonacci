transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/idontseeit/Desktop/Justins_Files/Projects/fpga_fibonacci/hdl/baud_gen.vhd}

