FROM gostartups/blockbook-build

ENV RPC_USER=user
ENV RPC_PASS=pass
ENV RPC_PORT=13389
ENV RPC_HOST=192.168.10.18
ENV BLOCKBOOK_PORT=9197

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh hydra

COPY run.sh run.sh

EXPOSE 9197

ENTRYPOINT sh run.sh 
