#!/bin/bash
cd /v2raybin
echo $PORT
sed -i "s/PORT/8080/g" config.json
./v2ray &
./ngrok authtoken 7GTsuP7sewoVemaBZrbZK_6C9w29ynA6r6TaSu6F2p5 tcp 8080
