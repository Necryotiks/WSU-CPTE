vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_12

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 modelsim_lib/msim/proc_sys_reset_v5_0_12

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_LSFR_0_0/Reaction_Time_Averager_LSFR_0_0_sim_netlist.vhdl" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_HZ_Counter_0_0/Reaction_Time_Averager_HZ_Counter_0_0_sim_netlist.vhdl" \
"c:/Users/Necryotiks/AppData/Roaming/SPB_Data/WSU-CPTE/Module_12/Module_12.srcs/sources_1/bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_RTM_FSM_0_0/Reaction_Time_Averager_RTM_FSM_0_0_sim_netlist.vhdl" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_stopwatch_ssd_driver_0_0/Reaction_Time_Averager_stopwatch_ssd_driver_0_0_sim_netlist.vhdl" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_ssd_mux_0_0/Reaction_Time_Averager_ssd_mux_0_0_sim_netlist.vhdl" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_ssd_dec_0_0/Reaction_Time_Averager_ssd_dec_0_0_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Module_12.srcs/sources_1/bd/Reaction_Time_Averager/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../Module_12.srcs/sources_1/bd/Reaction_Time_Averager/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_proc_sys_reset_0_0/sim/Reaction_Time_Averager_proc_sys_reset_0_0.vhd" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_Accumuator_0_0/Reaction_Time_Averager_Accumuator_0_0_sim_netlist.vhdl" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_BCD_TO_BINARY_0_0/Reaction_Time_Averager_BCD_TO_BINARY_0_0_sim_netlist.vhdl" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_BINARY_TO_BCD_0_0/Reaction_Time_Averager_BINARY_TO_BCD_0_0_sim_netlist.vhdl" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_EXTRA_THICC_MUX_0_0/Reaction_Time_Averager_EXTRA_THICC_MUX_0_0_sim_netlist.vhdl" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/Reaction_Time_Averager/sim/Reaction_Time_Averager.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_xlslice_0_0/Reaction_Time_Averager_xlslice_0_0_sim_netlist.vhdl" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_xlslice_0_1/Reaction_Time_Averager_xlslice_0_1_sim_netlist.vhdl" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_xlslice_0_2/Reaction_Time_Averager_xlslice_0_2_sim_netlist.vhdl" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_xlslice_0_3/Reaction_Time_Averager_xlslice_0_3_sim_netlist.vhdl" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_Divider_0_0/Reaction_Time_Averager_Divider_0_0_sim_netlist.vhdl" \

vlog -work xil_defaultlib \
"glbl.v"

