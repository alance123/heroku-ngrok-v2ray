#!/bin/bash
nginx &
ssh -R 80:localhost:80 serveo.net
