FROM ubuntu:trusty

LABEL maintainter="tinkercode@gmail.com"

RUN apt-get update
RUN apt-get install -y telnet

ENTRYPOINT ["/usr/bin/telnet", "towel.blinkenlights.nl"]
