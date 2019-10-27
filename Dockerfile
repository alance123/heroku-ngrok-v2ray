FROM ubuntu:latest

ENV VER=4.20.0
RUN apt update \
        && apt install wget unzip -y \
        && mkdir /v2raybin \ 
        && cd v2raybin \
        && wget -O v2ray.zip https://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip \
	&& unzip v2ray.zip \
	&& chmod 777 v2ctl \
	&& chmod 777 v2ray \
        && chmod +x /v2raybin/v2ray \
 	&& chgrp -R 0 / \
 	&& chmod -R g+rwX / \
        && wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip \
        && unzip ngrok.zip \
        && chmod 755 ngrok

ADD entrypoint.sh /entrypoint.sh

COPY config.json /v2raybin/config.json

RUN chmod +x /entrypoint.sh 

CMD  /entrypoint.sh 
