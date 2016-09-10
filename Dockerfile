#Ubuntu Docker image with Ansible

FROM ubuntu:16.04

MAINTAINER mrlesmithjr@gmail.com

RUN apt-get update && \
    apt-get install --no-install-recommends -y software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install --no-install-recommends -y ansible sudo && \
    apt-get clean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
