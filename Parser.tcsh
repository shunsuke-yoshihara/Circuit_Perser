#!/bin/tcsh

#Catch Script Error
if ($? != 0) then
    echo "Script Error"
    exit 1
endif


#File Path of Script
set SCRIPT1 = "env/VerilogConversion.py"

#Input File Path of SCRIPT1
set b01 = "circuit/_b01.v"
set b02 = "circuit/_b02.v"
set b03 = "circuit/_b03.v"
set b04 = "circuit/_b04.v"
set b05 = "circuit/_b05.v"
set b06 = "circuit/_b06.v"
set b07 = "circuit/_b07.v"
set b08 = "circuit/_b08.v"
set b09 = "circuit/_b09.v"
set b10 = "circuit/_b10.v"
set b11 = "circuit/_b11.v"
set b12 = "circuit/_b12.v"
set b13 = "circuit/_b13.v"
set b14 = "circuit/_b14.v"
set b15 = "circuit/_b15.v"
#set b16 = circuit/_b16.v
set b17 = "circuit/_b17.v"
set b18 = "circuit/_b18.v"
set b19 = "circuit/_b19.v"
set b20 = "circuit/_b20.v"
set b21 = "circuit/_b21.v"
set b22 = "circuit/_b22.v"

#Output File Path of SCRIPT1
set n_b01 = "n_circuit/_b01.v"
set n_b02 = "n_circuit/_b02.v"
set n_b03 = "n_circuit/_b03.v"
set n_b04 = "n_circuit/_b04.v"
set n_b05 = "n_circuit/_b05.v"
set n_b06 = "n_circuit/_b06.v"
set n_b07 = "n_circuit/_b07.v"
set n_b08 = "n_circuit/_b08.v"
set n_b09 = "n_circuit/_b09.v"
set n_b10 = "n_circuit/_b10.v"
set n_b11 = "n_circuit/_b11.v"
set n_b12 = "n_circuit/_b12.v"
set n_b13 = "n_circuit/_b13.v"
set n_b14 = "n_circuit/_b14.v"
set n_b15 = "n_circuit/_b15.v"
#set n_b16 = n_circuit/_b16.v
set n_b17 = "n_circuit/_b17.v"
set n_b18 = "n_circuit/_b18.v"
set n_b19 = "n_circuit/_b19.v"
set n_b20 = "n_circuit/_b20.v"
set n_b21 = "n_circuit/_b21.v"
set n_b22 = "n_circuit/_b22.v"

echo "--------------------------------"
echo "Convert Circuit to Readable Form"
#python3 $SCRIPT1 $b01 $n_b01
#python3 $SCRIPT1 $b02 $n_b02
#python3 $SCRIPT1 $b03 $n_b03
#python3 $SCRIPT1 $b04 $n_b04
#python3 $SCRIPT1 $b05 $n_b05
#python3 $SCRIPT1 $b06 $n_b06
#python3 $SCRIPT1 $b07 $n_b07
#python3 $SCRIPT1 $b08 $n_b08
#python3 $SCRIPT1 $b09 $n_b09
#python3 $SCRIPT1 $b10 $n_b10
#python3 $SCRIPT1 $b11 $n_b11
#python3 $SCRIPT1 $b12 $n_b12
#python3 $SCRIPT1 $b13 $n_b13
#python3 $SCRIPT1 $b14 $n_b14
#python3 $SCRIPT1 $b15 $n_b15
#python3 $SCRIPT1 $b16 $n_b16
#python3 $SCRIPT1 $b17 $n_b17
#python3 $SCRIPT1 $b18 $n_b18
#python3 $SCRIPT1 $b19 $n_b19
#python3 $SCRIPT1 $b20 $n_b20
#python3 $SCRIPT1 $b21 $n_b21
#python3 $SCRIPT1 $b22 $n_b22

echo "---------------------------------"
echo "Start of Circuit Analysis"
#./saa -n $n_b01
#./saa -n $n_b02
#./saa -n $n_b03
#./saa -n $n_b04
./saa -n $n_b05
#./saa -n $n_b06
#./saa -n $n_b07
#./saa -n $n_b08
#./saa -n $n_b09
#./saa -n $n_b10
#./saa -n $n_b11
#./saa -n $n_b12
#./saa -n $n_b13
#./saa -n $n_b14
#./saa -n $n_b15
#./saa -n $n_b16
#./saa -n $n_b17
#./saa -n $n_b18
#./saa -n $n_b19
#./saa -n $n_b20
#./saa -n $n_b21
#./saa -n $n_b22


