#!/bin/sh -l

ls
python3 /zap/wrk/custom.py
zap-baseline.py  -t https://www.example.com -g gen.conf -J testreport.html -B /zap/wrk/
pwd && ls -l /zap/wrk/

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
