FROM gostartups/golang-rocksdb-zeromq

WORKDIR /home
# Build blockbook
RUN apt install -y libzstd-dev
RUN git clone https://github.com/trezor/blockbook
WORKDIR /home/blockbook

# RUN git checkout 8d4dd5d69d89f5d13693cec467e97d80fa3cba91
# RUN go mod download
RUN go build 

