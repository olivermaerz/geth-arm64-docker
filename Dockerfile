FROM ubuntu:21.04
RUN apt-get -y update && apt-get upgrade -y
COPY geth /usr/bin

EXPOSE 8545
EXPOSE 30303

ENTRYPOINT ["/usr/bin/geth"]

