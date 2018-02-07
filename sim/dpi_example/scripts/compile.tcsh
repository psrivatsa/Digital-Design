#!/usr/bin/tcsh

# Compile SV code
if(! -d work) then
  echo "Creating work directory"
  vlib work
else
  echo "Delete and create work directory"
  \rm -rf work/
  vlib work
endif

echo " Compile SV Files"
vlog -sv ../sv/hello.sv -dpiheader dpiheader.h

# Compile C code
echo " Compile C Files"
g++ -I /apps/mentor/questa_sim/include -I $PWD -fPIC -shared -o hello.so ../c/hello.c

# Run SIM
vsim -64 -novopt work.hello -sv_lib hello -do "run -a" -c
