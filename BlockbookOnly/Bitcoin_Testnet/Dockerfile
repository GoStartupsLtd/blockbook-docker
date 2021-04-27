FROM gostartups/blockbook-build

ENV RPC_USER=user
ENV RPC_PASS=pass
ENV RPC_PORT=18332
ENV RPC_HOST=localhost
ENV BLOCKBOOK_PORT=19130

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh bitcoin_testnet

COPY run.sh run.sh

EXPOSE 19130

ENTRYPOINT sh run.sh 

