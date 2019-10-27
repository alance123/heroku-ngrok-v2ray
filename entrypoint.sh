#!/bin/bash
cd /v2raybin
echo $PORT
sed -i "s/PORT/8080/g" config.json
./ngrok tcp 8080 -log stdout --log-level debug &
./v2ray &
