#!/bin/bash
ghdl -a --ieee=synopsys *.vhd

ghdl -e --ieee=synopsys PoolControllerTB

ghdl -r PoolControllerTB --wave=wave.ghw --stop-time=1000ns

gtkwave wave.ghw

