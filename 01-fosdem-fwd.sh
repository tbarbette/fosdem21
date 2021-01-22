#!/bin/bash
npf-run fastclick --cluster client=nslrack17 dut=nslrack18 --test 01-fosdem-fwd.npf --graph-filename 01-fosdem-fwd-results/.svg $@ 
