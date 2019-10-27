#!/bin/bash
cd /v2raybin
echo $PORT
neofetch
./ngrok authtoken BDZIXnhJt2HNWLXyQ5PM_qCaBq0W2sNFcCa0rfTZd -log stdout --log-level debug 
./ngrok tcp 8080 -log stdout --log-level debug &
./v2ray &
