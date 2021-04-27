FROM gostartups/blockbook-build

WORKDIR /home/bitcoingold


ENV RPC_USER=user
ENV RPC_PASS=pass
ENV RPC_PORT=8332
ENV BLOCKBOOK_PORT=9135

RUN wget https://github.com/BTCGPU/BTCGPU/releases/download/v0.17.3/bitcoin-gold-0.17.3-x86_64-linux-gnu.tar.gz
RUN tar xzf bitcoin-gold-0.17.3-x86_64-linux-gnu.tar.gz
RUN install -m 0755 -o root -g root -t /usr/local/bin bitcoin-gold-0.17.3/bin/*


WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh bgold

COPY run.sh run.sh

EXPOSE 9135

ENTRYPOINT bgoldd -rpcuser="$RPC_USER" \
    -rpcpassword="$RPC_PASS" -server \
    -rpcport="$RPC_PORT" \
    --daemon && \
    sh run.sh 
