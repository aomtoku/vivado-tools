###########################################################
#  Vivado HLS 
#  Copyright (c) 2016 Yuta Tokusashi. All rights reserved
###########################################################

set prj "app"
set device xc7z010clg400-1
set clock_period 10

set src [lindex $argv 3]
set top [lindex $argv 4]

### Project file initilizing ###
open_project -reset ${prj}
set_top ${top}
add_files ${src}

### Setting boards parameter ###
open_solution -reset "solution1"
set_part ${device}
create_clock -period ${clock_period} -name default

### HLS Design to RTL ###

#csim_design
csynth_design
#cosim_design
#export_design -evaluate verilog -format ip_catalog

exit
