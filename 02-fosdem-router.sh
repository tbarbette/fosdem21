#!/bin/sh
npf-run fastclick --cluster client=nslrack17 dut=nslrack18 --tags udpgen --graph-filename 02-fosdem-router-results/.svg --test 02-fosdem-router.npf $@
