
FROM golang:1.19.1 as BUILDER

RUN apt update && apt install -y build-essential git
WORKDIR /geth
ARG VERSION=v1.10.23
RUN git clone --quiet --branch ${VERSION} --depth 1 https://github.com/ethereum/go-ethereum .
RUN go run build/ci.go install -static ./cmd/geth

FROM blockbook
ENV DATA_DIR=/root/node
COPY --from=BUILDER /geth/build/bin/getxh /usr/local/bin/

WORKDIR /home/blockbook
RUN ./contrib/scripts/build-blockchaincfg.sh brise

WORKDIR /root/
RUN wget https://raw.githubusercontent.com/Bitgert/brise-chain/master/brise_mainnet.json
RUN geth init brise_mainnet.json

COPY run.sh run.sh

WORKDIR /home/blockbook
ENTRYPOINT sh /root/run.sh