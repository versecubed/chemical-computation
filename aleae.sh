#!/bin/bash
varDate=`date +%y-%m-%d_%H:%M:%S:%N`
echo $varDate
file1="current-react/chem.in"
file2="current-react/chem.r"

aleae/aleae $file1 $file2 1 1000 12 | tee output\$varDate.outpt
echo $varDate | python3 aleae_stats_graber.py
#google-chrome $varDate.svg &
#firefox -new-tab $varDate.svg &
