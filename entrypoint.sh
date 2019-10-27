#!/bin/bash
cd /v2raybin
./v2ray &
./ngrok tcp 8080 -log stdout --log-level debug
