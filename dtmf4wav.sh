#!/bin/sh
echo -n "" > ./log/dtmf_res.txt ; arecord -q -vvv -f dat ./results/result_arecord.wav -c1 -r44100 -d 60 2> ./log/error_arecord.txt > ./results/result_arecord.log; multimon -a DTMF -t wav ./results/result_arecord.wav > ./log/dtmf.txt ;  sed -i "s/DTMF: //" ./log/dtmf.txt; sed -n 4~1p ./log/dtmf.txt > ./log/dtmf_tmp.txt; sed -e :a -e '$b;N;s/\n//;ba' ./log/dtmf_tmp.txt  > ./log/dtmf_res.txt &
