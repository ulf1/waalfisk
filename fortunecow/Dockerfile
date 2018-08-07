FROM ubuntu:xenial

LABEL maintainter="tinkercode@gmail.com"

RUN apt-get update
RUN apt-get install -y fortune cowsay

COPY script.sh /root/script.sh

ENTRYPOINT ["/bin/bash", "-c",  "/root/script.sh"]
