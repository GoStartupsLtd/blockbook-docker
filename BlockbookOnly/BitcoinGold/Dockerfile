FROM gostartups/blockbook-build

ENV RPC_USER=user
ENV RPC_PASS=pass
ENV RPC_PORT=8337
ENV RPC_HOST=localhost
ENV BLOCKBOOK_PORT=9135

RUN apt install -y libzstd-dev
RUN apt-get update && apt-get install -y libc6 libgcc1 libstdc++6
RUN git clone https://github.com/trezor/blockbook
WORKDIR /home/blockbook

# ENV GOEXPERIMENT=noexperiment
# ENV GODEBUG=cpu.all=off

RUN git checkout a5bbb7d8ee02438dc48a3996e63aaaa3b19a19bd    
#4f7d8f0956fe534d5dccc8eeb91de7c031f0c4be
# RUN go mod download
RUN go build

# WORKDIR /home/blockbook

RUN echo "* soft nofile 65535" >> /etc/security/limits.conf
RUN echo "* hard nofile 65535" >> /etc/security/limits.conf

RUN ./contrib/scripts/build-blockchaincfg.sh bgold


COPY run.sh run.sh

EXPOSE 9135

HEALTHCHECK --interval=30s --timeout=5s \
  CMD lsof | wc -l || exit 1

ENTRYPOINT sh run.sh 
