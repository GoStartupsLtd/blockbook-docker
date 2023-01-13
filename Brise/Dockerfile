
FROM golang:1.19.1 as BUILDER

RUN apt update && apt install -y build-essential git
WORKDIR /geth
ARG VERSION=v1.10.25
RUN git clone --quiet --branch ${VERSION} --depth 1 https://github.com/ethereum/go-ethereum .
RUN go run build/ci.go install -static ./cmd/geth

FROM gostartups/blockbook-build

WORKDIR /home/blockbook

COPY --from=BUILDER /geth/build/bin/geth /usr/local/bin/
RUN ./contrib/scripts/build-blockchaincfg.sh brise

WORKDIR /root/

RUN wget https://raw.githubusercontent.com/Bitgert/brise-chain/master/brise_mainnet.json
COPY run.sh run.sh

WORKDIR /home/blockbook

ENV RPC_HOST=localhost
ENV RPC_PORT=8545
ENV WS_PORT=8036
ENV ADDRESS=0.0.0.0
ENV PORT=30303

EXPOSE ${RPC_PORT} ${WS_PORT}

ENTRYPOINT sh /root/run.sh