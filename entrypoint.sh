#!/bin/sh -l

ls
# Runs the ZAP Baseline scan
docker run -v $(pwd):/zap/wrk/:rw  -t owasp/zap2docker-stable zap-baseline.py  -t https://www.example.com -g gen.conf -J report_json.json
# listing all the variables
ll
# Post process the generated report and create issues
python3 custom.py

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
