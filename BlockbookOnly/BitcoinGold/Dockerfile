FROM gostartups/blockbook-build

ENV RPC_USER=user
ENV RPC_PASS=pass
ENV RPC_PORT=8337
ENV RPC_HOST=localhost
ENV BLOCKBOOK_PORT=9135

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh bgold

COPY run.sh run.sh

EXPOSE 9135

ENTRYPOINT sh run.sh 
