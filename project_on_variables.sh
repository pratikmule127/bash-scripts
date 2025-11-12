#!/bin/bash
start=$(date +%s)
pwd
sleep 10
end=$(date +%s)
time_taken=$((end-start))
echo "time taken to execute the script:$time_taken"
