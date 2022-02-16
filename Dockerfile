FROM gostartups/golang-rocksdb-zeromq

WORKDIR /home
# Build blockbook
RUN git clone https://github.com/martin-key/blockbook.git

WORKDIR /home/blockbook
RUN go mod download
RUN go build

