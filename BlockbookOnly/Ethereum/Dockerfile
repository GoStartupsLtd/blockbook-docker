FROM gostartups/blockbook-build

ENV RPC_PORT=8545
ENV RPC_HOST=localhost
ENV BLOCKBOOK_PORT=9136

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh ethereum

COPY run.sh run.sh

EXPOSE 9136
EXPOSE 8036
EXPOSE 8136

ENTRYPOINT  sh run.sh 
