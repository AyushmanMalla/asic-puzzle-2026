# loads the gds file and looks at the reference pdk to extract the spice netlist
# magic -dnull -noconsole -T pdk/sky130A/libs.tech/magic/sky130A.tech extract.tcl 
# run the above command when you need to rextract the netlist from the gds 

gds read puzzle.gds
load puzzle
extract do local
extract all
ext2spice lvs
ext2spice
quit
