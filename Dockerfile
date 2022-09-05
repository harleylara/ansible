FROM ubuntu:focal

WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git sudo ansible build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

RUN adduser --disabled-password --gecos '' harley
RUN adduser harley sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER harley
WORKDIR /home/harley
