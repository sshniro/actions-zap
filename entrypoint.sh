#!/bin/sh -l

zap-baseline.py -t https://www.example.com
echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
