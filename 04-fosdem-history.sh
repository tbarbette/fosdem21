#!/bin/bash
npf-compare click+click:Click fastclick-nobatch-nozc+BURST=1,PIPELINE=1:+DPDK fastclick-nobatch-nozc+BURST=1:+R-T-C fastclick-nobatch+BURST=1:+Zero-copy "fastclick-nobatch+BURST=32:+I/O Batching" fastclick:+Batching --cluster client=nslrack17-100G dut=nslrack18-100G --test 04-fosdem-history.npf --graph-filename 04-fosdem-history-results/.svg $@ 
