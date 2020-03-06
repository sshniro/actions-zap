#!/bin/sh -l

#zap-baseline.py -t https://www.example.com
ls
python3 /zap/wrk/custom.py
echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
