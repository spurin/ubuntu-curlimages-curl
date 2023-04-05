FROM ubuntu:22.04

RUN apt-get update && apt install -y curl dnsutils && rm -rf /var/lib/apt/lists/*
