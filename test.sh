#!/bin/bash

set -ex

pkill -9 client

TRANS=$1
SRV=$2
CLI=$3

cd bin

nohup ./client --server=$SRV --client=$CLI --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --server=$SRV --client=$CLI --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --server=$SRV --client=$CLI --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --server=$SRV --client=$CLI --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --server=$SRV --client=$CLI --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --server=$SRV --client=$CLI --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --server=$SRV --client=$CLI --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --server=$SRV --client=$CLI --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --server=$SRV --client=$CLI --transport=$TRANS > /dev/null 2>&1 &
nohup ./client --server=$SRV --client=$CLI --transport=$TRANS > /dev/null 2>&1 &

./server --server=$SRV --client=$CLI --transport=$TRANS


