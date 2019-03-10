FROM ubuntu:16.04

RUN apt-get update && apt-get install -y asterisk tftpd-hpa vim \
    && apt-get clean

EXPOSE 5060
EXPOSE 10000-20000/UDP

CMD asterisk -f