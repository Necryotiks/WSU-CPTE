#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=C:/Xilinx/SDK/2017.4/bin;C:/Xilinx/Vivado/2017.4/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2017.4/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2017.4/bin
else
  PATH=C:/Xilinx/SDK/2017.4/bin;C:/Xilinx/Vivado/2017.4/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2017.4/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2017.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

<<<<<<< HEAD
<<<<<<< HEAD
HD_PWD='C:/Users/Sergaljerk/WSU-CPTE/Project2.1_VHDL/Project2.1_VHDL.runs/synth_1'
=======
HD_PWD='C:/Users/Sergaljerk/Project2.1_VHDL/Project2.1_VHDL.runs/synth_1'
>>>>>>> master
=======
HD_PWD='C:/Users/Sergaljerk/Project2.1_VHDL/Project2.1_VHDL.runs/synth_1'
>>>>>>> 5ec567faa533c067fd38e29ea17d6632d7cd74e8
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

<<<<<<< HEAD
<<<<<<< HEAD
EAStep vivado -log top_VHDL_instantiation.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source top_VHDL_instantiation.tcl
=======
EAStep vivado -log top_VHDL.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source top_VHDL.tcl
>>>>>>> master
=======
EAStep vivado -log top_VHDL.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source top_VHDL.tcl
>>>>>>> 5ec567faa533c067fd38e29ea17d6632d7cd74e8
