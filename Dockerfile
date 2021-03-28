FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get -y update && apt-get upgrade -y
RUN apt-get -y install --fix-missing ethereum

EXPOSE 8545
EXPOSE 30303

ENTRYPOINT ["/usr/bin/geth", "-rpc", "--cache 1024"]
