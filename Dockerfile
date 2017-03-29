FROM debian:jessie

MAINTAINER leventyalcin |leventyalcin{at}gmail{punctuation}com|

LABEL name="opsgang/nvm" version="1.0.0" \
      description="nvm pre-installed image"

ENV DEBIAN_FRONTEND=noninteractive \
    NVM_REPO=https://github.com/creationix/nvm.git \
    NVM_DIR="/opt/nvm"

RUN apt-get update \
    && apt-get install -y git curl wget \
    && git clone "$NVM_REPO" "$NVM_DIR" \
    && rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*
