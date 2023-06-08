#!/bin/bash
killall zwz-admin # kill zwz-admin service
echo "stop zwz-admin success"
ps -ax | grep zwz-admin