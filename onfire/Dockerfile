
FROM ubuntu:trusty

LABEL maintainter="tinkercode@gmail.com"

RUN apt-get -y update 
RUN apt-get install -y software-properties-common
RUN add-apt-repository main
RUN add-apt-repository universe
RUN add-apt-repository restricted
RUN add-apt-repository multiverse
RUN apt-get -y update 
RUN apt-get install -y libaa-bin

ENTRYPOINT ["/usr/bin/aafire"]
