FROM ubuntu:xenial

LABEL maintainter="tinkercode@gmail.com"

RUN mkdir -p /data

COPY script.sh /root/script.sh

ENTRYPOINT ["/bin/bash", "-c",  "/root/script.sh"]
