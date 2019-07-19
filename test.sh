#!/bin/bash

set -ex

pkill -9 client

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


