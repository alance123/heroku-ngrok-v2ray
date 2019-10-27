#!/bin/bash
cd /v2raybin

./ngrok authtoken BDZIXnhJt2HNWLXyQ5PM_qCaBq0W2sNFcCa0rfTZd
./ngrok tcp 8080 -log stdout --log-level debug
