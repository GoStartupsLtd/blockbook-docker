FROM gostartups/blockbook-build

ENV BLOCKBOOK_PORT=9198

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh arbitrum

COPY run.sh run.sh

EXPOSE ${BLOCKBOOK_PORT}

ENTRYPOINT sh run.sh
