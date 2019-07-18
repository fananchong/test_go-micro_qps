#!/bin/bash

set -ex

export GOPROXY=https://goproxy.io
export GOBIN=$PWD
go install server.go
go install client.go