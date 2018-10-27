
################################################################
# This is a generated script based on design: CMP
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source CMP_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Comparator, Multiplier, PIPO, PIPO, PIPO

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z007sclg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name CMP

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set i_CLK [ create_bd_port -dir I -type clk i_CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $i_CLK
  set i_LDRG [ create_bd_port -dir I i_LDRG ]
  set i_LD_0 [ create_bd_port -dir I i_LD_0 ]
  set i_LD_1 [ create_bd_port -dir I i_LD_1 ]
  set i_SW [ create_bd_port -dir I -from 7 -to 0 i_SW ]
  set o_EQ [ create_bd_port -dir O o_EQ ]
  set o_GT [ create_bd_port -dir O o_GT ]
  set o_LT [ create_bd_port -dir O o_LT ]

  # Create instance: Comparator_0, and set properties
  set block_name Comparator
  set block_cell_name Comparator_0
  if { [catch {set Comparator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Comparator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Multiplier_0, and set properties
  set block_name Multiplier
  set block_cell_name Multiplier_0
  if { [catch {set Multiplier_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Multiplier_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: PIPO_0, and set properties
  set block_name PIPO
  set block_cell_name PIPO_0
  if { [catch {set PIPO_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PIPO_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: PIPO_1, and set properties
  set block_name PIPO
  set block_cell_name PIPO_1
  if { [catch {set PIPO_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PIPO_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: PIPO_2, and set properties
  set block_name PIPO
  set block_cell_name PIPO_2
  if { [catch {set PIPO_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PIPO_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.BUS_MSB {15} \
 ] $PIPO_2

  # Create port connections
  connect_bd_net -net Comparator_0_o_EQ [get_bd_ports o_EQ] [get_bd_pins Comparator_0/o_EQ]
  connect_bd_net -net Comparator_0_o_GT [get_bd_ports o_GT] [get_bd_pins Comparator_0/o_GT]
  connect_bd_net -net Comparator_0_o_LT [get_bd_ports o_LT] [get_bd_pins Comparator_0/o_LT]
  connect_bd_net -net Multiplier_0_o_Result [get_bd_pins Comparator_0/i_B] [get_bd_pins Multiplier_0/o_Result] [get_bd_pins PIPO_2/i_SW]
  connect_bd_net -net PIPO_0_o_Out [get_bd_pins Multiplier_0/i_B] [get_bd_pins PIPO_0/o_Out]
  connect_bd_net -net PIPO_1_o_Out [get_bd_pins Multiplier_0/i_A] [get_bd_pins PIPO_1/o_Out]
  connect_bd_net -net PIPO_2_o_Out [get_bd_pins Comparator_0/i_A] [get_bd_pins PIPO_2/o_Out]
  connect_bd_net -net clk_100MHz_1 [get_bd_ports i_CLK] [get_bd_pins PIPO_0/i_CLK] [get_bd_pins PIPO_1/i_CLK] [get_bd_pins PIPO_2/i_CLK]
  connect_bd_net -net i_A_0_1 [get_bd_ports i_SW] [get_bd_pins PIPO_0/i_SW] [get_bd_pins PIPO_1/i_SW]
  connect_bd_net -net i_BTN_0_1 [get_bd_ports i_LD_1] [get_bd_pins PIPO_1/i_BTN]
  connect_bd_net -net i_BTN_0_2 [get_bd_ports i_LDRG] [get_bd_pins PIPO_2/i_BTN]
  connect_bd_net -net i_BTN_1_1 [get_bd_ports i_LD_0] [get_bd_pins PIPO_0/i_BTN]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


