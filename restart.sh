#!/bin/bash
echo "go build"
go mod tidy
go build -o zwz-admin main.go
chmod +x ./zwz-admin
echo "kill zwz-admin service"
killall zwz-admin # kill go-admin service
nohup ./zwz-admin server -c=config/settings.dev.yml >> access.log 2>&1 & #后台启动服务将日志写入access.log文件
echo "run zwz-admin success"
ps -ax | grep zwz-admin
