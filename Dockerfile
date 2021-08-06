# Created from LiveOverflow's Dockerfile at https://github.com/LiveOverflow/pwnedit/blob/main/episode05/Makefile
FROM ubuntu:20.04
ENV LC_CTYPE C.UTF-8
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -yq gcc make build-essential
RUN useradd -ms /bin/bash user
RUN echo 'export PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;31m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]# "' >> /root/.bashrc
RUN echo 'export PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$ "' >> /home/user/.bashrc
USER user
WORKDIR /home/user
