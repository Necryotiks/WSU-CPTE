# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/system_system_ila_0_0.xci
# IP: The module: 'system_system_ila_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# Block Designs: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/bd_d5b8.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8 || ORIG_REF_NAME==bd_d5b8} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/bd_d5b8_ila_lib_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_ila_lib_0 || ORIG_REF_NAME==bd_d5b8_ila_lib_0} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_1/bd_d5b8_g_inst_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_g_inst_0 || ORIG_REF_NAME==bd_d5b8_g_inst_0} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_2/bd_d5b8_slot_0_aw_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_slot_0_aw_0 || ORIG_REF_NAME==bd_d5b8_slot_0_aw_0} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_3/bd_d5b8_slot_0_w_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_slot_0_w_0 || ORIG_REF_NAME==bd_d5b8_slot_0_w_0} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_4/bd_d5b8_slot_0_b_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_slot_0_b_0 || ORIG_REF_NAME==bd_d5b8_slot_0_b_0} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_5/bd_d5b8_slot_0_ar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_slot_0_ar_0 || ORIG_REF_NAME==bd_d5b8_slot_0_ar_0} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_6/bd_d5b8_slot_0_r_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_slot_0_r_0 || ORIG_REF_NAME==bd_d5b8_slot_0_r_0} -quiet] -quiet

# XDC: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/system_system_ila_0_0_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'system_system_ila_0_0'. Do not add the DONT_TOUCH constraint.
set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet

# XDC: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_d5b8_ila_lib_0 || ORIG_REF_NAME==bd_d5b8_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_d5b8_ila_lib_0 || ORIG_REF_NAME==bd_d5b8_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/bd_d5b8_ila_lib_0_ooc.xdc

# XDC: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/bd_d5b8_ooc.xdc

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/system_system_ila_0_0.xci
# IP: The module: 'system_system_ila_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# Block Designs: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/bd_d5b8.bd
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8 || ORIG_REF_NAME==bd_d5b8} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/bd_d5b8_ila_lib_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_ila_lib_0 || ORIG_REF_NAME==bd_d5b8_ila_lib_0} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_1/bd_d5b8_g_inst_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_g_inst_0 || ORIG_REF_NAME==bd_d5b8_g_inst_0} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_2/bd_d5b8_slot_0_aw_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_slot_0_aw_0 || ORIG_REF_NAME==bd_d5b8_slot_0_aw_0} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_3/bd_d5b8_slot_0_w_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_slot_0_w_0 || ORIG_REF_NAME==bd_d5b8_slot_0_w_0} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_4/bd_d5b8_slot_0_b_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_slot_0_b_0 || ORIG_REF_NAME==bd_d5b8_slot_0_b_0} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_5/bd_d5b8_slot_0_ar_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_slot_0_ar_0 || ORIG_REF_NAME==bd_d5b8_slot_0_ar_0} -quiet] -quiet

# IP: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_6/bd_d5b8_slot_0_r_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_d5b8_slot_0_r_0 || ORIG_REF_NAME==bd_d5b8_slot_0_r_0} -quiet] -quiet

# XDC: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/system_system_ila_0_0_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'system_system_ila_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet

# XDC: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_d5b8_ila_lib_0 || ORIG_REF_NAME==bd_d5b8_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_d5b8_ila_lib_0 || ORIG_REF_NAME==bd_d5b8_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/bd_d5b8_ila_lib_0_ooc.xdc

# XDC: c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_system_ila_0_0/bd_0/bd_d5b8_ooc.xdc
