FROM gostartups/blockbook-build

ENV RPC_USER=user
ENV RPC_PASS=pass
ENV RPC_PORT=22555
ENV RPC_HOST=localhost
ENV BLOCKBOOK_PORT=9138

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh dogecoin

COPY run.sh run.sh

EXPOSE 9138

ENTRYPOINT sh run.sh 
