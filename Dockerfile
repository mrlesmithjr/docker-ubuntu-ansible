#Ubuntu Docker image with Ansible

FROM ubuntu:16.04

MAINTAINER mrlesmithjr@gmail.com

RUN apt-get update && \
    apt-get install --no-install-recommends -y software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible sudo

RUN apt-get clean -y && \
    apt-get autoremove -y

RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
