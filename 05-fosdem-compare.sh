METHODS=
METHODS=fastclick:FastClick 
METHODS="$METHODS fastclick-dpacket-fast:FastClick_Light"
METHODS="$METHODS local+bess:BESS"
METHODS="$METHODS vpp+vpp:VPP"
npf-compare $METHODS --cluster client=nslrack17-100G dut=nslrack18-100G --test 05-fosdem-compare.npf  --graph-filename 05-fosdem-compare-results/.svg --tags promisc udpgen --config n_runs=3 "graph_color={1,1,2,3}" $@ 
