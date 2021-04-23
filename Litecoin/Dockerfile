FROM gostartups/blockbook-build

WORKDIR /home/litecoin


ENV RPC_USER=user
ENV RPC_PASS=pass
ENV RPC_PORT=9332

RUN wget https://download.litecoin.org/litecoin-0.18.1/linux/litecoin-0.18.1-x86_64-linux-gnu.tar.gz
RUN tar xzf litecoin-0.18.1-x86_64-linux-gnu.tar.gz
RUN install -m 0755 -o root -g root -t /usr/local/bin litecoin-0.18.1/bin/*


WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh litecoin

COPY run.sh run.sh

EXPOSE 9134

ENTRYPOINT litecoind -rpcuser="$RPC_USER" \
    -rpcpassword="$RPC_PASS" -server \
    -rpcport="$RPC_PORT" \
    --daemon && \
    sh run.sh 
