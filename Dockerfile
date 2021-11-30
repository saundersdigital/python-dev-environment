FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip \
    python3-dev \
    curl \
    gnupg \
    vim \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    ln -sf python3 /usr/bin/python

RUN pip3 install \
    requests \
    beautifulsoup4 \
    scrapy

ENTRYPOINT ["/bin/bash"]