FROM ubuntu:bionic

RUN apt update \
        && apt install openssh-client nginx

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh 

CMD  /entrypoint.sh 