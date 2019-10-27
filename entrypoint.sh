#!/bin/bash
cd /v2raybin
echo $PORT
sed -i "s/PORT/8080/g" config.json
./v2ray &
