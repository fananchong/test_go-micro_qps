set GOPROXY=https://goproxy.io
set GOBIN=%~dp0bin
go install ./server.go
go install ./client.go