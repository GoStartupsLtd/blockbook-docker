FROM gostartups/blockbook-build

ENV RPC_USER=user
ENV RPC_PASS=pass
ENV RPC_PORT=8332
ENV RPC_HOST=localhost
ENV BLOCKBOOK_PORT=9131

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh bcash

COPY run.sh run.sh

EXPOSE 9131

ENTRYPOINT sh run.sh 

