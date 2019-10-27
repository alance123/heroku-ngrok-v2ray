FROM ubuntu:latest

ENV VER=4.20.0
RUN apt update \
        && apt install wget unzip -y \
        && mkdir /v2raybin \ 
        && cd v2raybin \
        && wget --no-check-certificate -O v2ray.zip https://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip \
	&& unzip v2ray.zip \
	&& chmod 777 v2ctl \
	&& chmod 777 v2ray \
        && chmod +x /v2raybin/v2ray \
 	&& chgrp -R 0 /v2raybin \
 	&& chmod -R g+rwX /v2raybin \
        && wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip \
        && unzip ngrok.zip \
        && chmod 755 ngrok \
        && ./ngrok authtoken 7GTsuP7sewoVemaBZrbZK_6C9w29ynA6r6TaSu6F2p5

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh 

CMD  /entrypoint.sh 
