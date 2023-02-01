FROM gostartups/blockbook-build:trezor

ENV RPC_USER=user
ENV RPC_PASS=pass
ENV RPC_PORT=8332
ENV RPC_HOST=localhost
ENV BLOCKBOOK_PORT=9130

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh bitcoin

COPY run.sh run.sh

EXPOSE 9130

ENTRYPOINT sh run.sh 

