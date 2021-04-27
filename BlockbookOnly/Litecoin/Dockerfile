FROM gostartups/blockbook-build

ENV RPC_USER=user
ENV RPC_PASS=pass
ENV RPC_PORT=9332
ENV RPC_HOST=localhost
ENV BLOCKBOOK_PORT=9134

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh litecoin

COPY run.sh run.sh

EXPOSE 9134

ENTRYPOINT sh run.sh 
