#!/bin/bash
METHODS=
METHODS=fastclick:FastClick 
METHODS="$METHODS fastclick-dpacket-fast:FastClick_Light"
METHODS="$METHODS local+bess:BESS"
METHODS="$METHODS vpp+vpp:VPP"

echo "WARNING : This test will change your cpu frequency, you'll want to switch it back afterwards..."
npf-compare $METHODS --cluster client=nslrack17-100G dut=nslrack18-100G --test 05-fosdem-compare.npf  --graph-filename 05-fosdem-compare-results/.svg --tags promisc udpgen --config n_runs=3 "graph_color={1,1,2,3}" $@ 
echo "WARNING : The CPU freq is still to 1200. You probably want to run cpupower frequency-set"
