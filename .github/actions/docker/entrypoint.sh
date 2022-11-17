#!/bin/sh -l

echo "Hello $1, Alejandro. This is from Docker invoked shell script"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT