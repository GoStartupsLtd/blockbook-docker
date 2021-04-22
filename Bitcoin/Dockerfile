FROM gostartups/blockbook-build

WORKDIR /home/bitcoin


ENV RPC_USER=user
ENV RPC_PASS=pass

RUN wget https://bitcoin.org/bin/bitcoin-core-0.21.0/bitcoin-0.21.0-x86_64-linux-gnu.tar.gz
RUN tar xzf bitcoin-0.21.0-x86_64-linux-gnu.tar.gz
RUN install -m 0755 -o root -g root -t /usr/local/bin bitcoin-0.21.0/bin/*

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh bitcoin

COPY run.sh run.sh

ENTRYPOINT bitcoind -rpcuser="$RPC_USER" \
    -rpcpassword="$RPC_PASS" -server \
    -zmqpubhashblock="tcp://localhost:29000" \
    -zmqpubhashtx="tcp://localhost:29000" \
    -zmqpubrawblock="tcp://localhost:29000" \
    -zmqpubrawtx="tcp://localhost:29000" \
    -zmqpubsequence="tcp://localhost:29000" \
    --daemon && \
    sh run.sh 


