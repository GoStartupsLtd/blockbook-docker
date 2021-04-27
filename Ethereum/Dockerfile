FROM gostartups/blockbook-build


WORKDIR /home/ethereum

ENV BLOCKBOOK_PORT=9136

RUN git clone https://github.com/ethereum/go-ethereum && \
    cd go-ethereum && \
    make geth 


RUN cp /home/ethereum/go-ethereum/build/bin/geth /usr/local/bin/

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh ethereum

COPY run.sh run.sh

EXPOSE 9136
EXPOSE 8036
EXPOSE 8136

ENTRYPOINT  sh run.sh 
