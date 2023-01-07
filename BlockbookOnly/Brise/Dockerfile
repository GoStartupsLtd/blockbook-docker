FROM blockbook

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh brise

COPY run.sh run.sh

ENTRYPOINT sh run.sh