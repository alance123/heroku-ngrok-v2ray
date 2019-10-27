FROM ubuntu:bionic

RUN apt update \
        && apt install wget unzip -y \
        && wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip \
        && unzip ngrok.zip \
        && chmod 755 ngrok

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh 

CMD  /entrypoint.sh 
