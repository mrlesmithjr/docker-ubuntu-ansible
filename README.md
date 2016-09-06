# docker-ubuntu-ansible

Info
----

Ubuntu Docker image with Ansible pre-installed.

Docker Info
-----------
Dockerfile
```
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
```

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- @mrlesmithjr
- http://everythingshouldbevirtual.com
- mrlesmithjr [at] gmail.com
