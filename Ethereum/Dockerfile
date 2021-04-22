FROM gostartups/blockbook-build


WORKDIR /home/ethereum

RUN git clone https://github.com/ethereum/go-ethereum && \
    cd go-ethereum && \
    make geth 


RUN cp /home/ethereum/go-ethereum/build/bin/geth /usr/local/bin/

WORKDIR /home/blockbook

RUN ./contrib/scripts/build-blockchaincfg.sh ethereum

COPY run.sh run.sh

ENTRYPOINT  sh run.sh 
