FROM gostartups/blockbook-build

ENV RPC_USER=user
ENV RPC_PASS=pass
ENV RPC_PORT=10332
ENV RPC_HOST=localhost
ENV BLOCKBOOK_PORT=9139

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh zcash

COPY run.sh run.sh

EXPOSE 9139

ENTRYPOINT sh run.sh 
