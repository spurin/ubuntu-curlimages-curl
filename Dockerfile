FROM ubuntu:22.04

RUN apt-get update && apt install -y curl dnsutils && rm -rf /var/lib/apt/lists/*

###############################################################
# set entrypoint
###############################################################
COPY "entrypoint.sh" "/entrypoint.sh"
CMD ["curl"]
ENTRYPOINT ["/entrypoint.sh"]
