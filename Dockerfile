FROM ubuntu:14.04

MAINTAINER zoobestik <kb.chernenko@gmail.com>

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y checkinstall wget python-minimal sudo

RUN useradd docker
RUN echo "docker ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER docker
