FROM gostartups/blockbook-build

WORKDIR /home/dogecoin


ENV RPC_USER=user
ENV RPC_PASS=pass
ENV RPC_PORT=22555

RUN wget https://github.com/dogecoin/dogecoin/releases/download/v1.14.3/dogecoin-1.14.3-x86_64-linux-gnu.tar.gz
RUN tar xzf dogecoin-1.14.3-x86_64-linux-gnu.tar.gz
RUN install -m 0755 -o root -g root -t /usr/local/bin dogecoin-1.14.3/bin/*


WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh dogecoin

COPY run.sh run.sh

EXPOSE 9138

ENTRYPOINT dogecoind -rpcuser="$RPC_USER" \
    -rpcpassword="$RPC_PASS" \
    -rpcport="$RPC_PORT" \
    -server -daemon && \
    sh run.sh 
