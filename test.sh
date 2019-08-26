#!/bin/bash

set -ex

pids=`ps -ux | grep client | grep -v grep  | awk '{print $2}'`
if [[ $pids != "" ]]; then
    kill -9 $pids
fi

TRANS=$1

cd bin

nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --transport=$TRANS > /dev/null 2>&1 &


./server --transport=$TRANS


