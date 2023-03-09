FROM gostartups/golang-rocksdb-zeromq:1511

WORKDIR /home
# Build blockbook
RUN apt install -y libzstd-dev
RUN git clone https://github.com/trezor/blockbook

WORKDIR /home/blockbook
# RUN go mod download
RUN go build 

