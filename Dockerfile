FROM ubuntu:24.04
  # Variables
  ARG VERSION=29.1
  ARG DEBIAN_FRONTEND=noninteractive
  ENV WORKDIR=/var/work
  ENV DATADIR=/mnt/bitcoin

  # Ubuntu
  RUN apt-get update
  RUN apt-get install -y curl wget
  RUN apt-get install -y libevent-dev libboost-dev
  RUN apt-get install -y libsqlite3-dev

  # Path
  RUN mkdir -p $WORKDIR $DATADIR
  WORKDIR $WORKDIR

  # Download Official Bitcoin
  RUN wget -O bitcoin.tar.gz "https://bitcoincore.org/bin/bitcoin-core-$VERSION/bitcoin-$VERSION-x86_64-linux-gnu.tar.gz"
  RUN mkdir -p bitcoin && tar -xzf bitcoin.tar.gz -C bitcoin --strip-components=1
  RUN mv ./bitcoin/bin/bitcoind .
  RUN rm -rf bitcoin bitcoin.tar.gz

  # launcher.sh
  COPY ./launcher.sh /var/work/launcher.sh
  RUN chmod +x /var/work/launcher.sh

  ENTRYPOINT ["/var/work/launcher.sh"]