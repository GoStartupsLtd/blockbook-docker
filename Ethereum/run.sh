#!/bin/bash

RPC_USER="${RPC_USER:-user}"
RPC_PASS="${RPC_PASS:-pass}"
RPC_HOST="${RPC_HOST:-localhost}"
RPC_PORT="${RPC_PORT:-8332}"
MQ_PORT="${MQ_URL:-29000}"

CFG_FILE=/home/blockbook/build/blockchaincfg.json



exec ./blockbook -sync -blockchaincfg=/home/blockbook/build/blockchaincfg.json -debug=true -workers=${WORKERS:-1} -public=:${BLOCKBOOK_PORT:-9136} -logtostderr | \
geth console --ipcdisable --syncmode full --txlookuplimit 0 --cache 1024 --gcmode archive --port 38336 \
--http --http.addr 127.0.0.1 --http.port=8136 --http.vhosts \'*\' --http.corsdomain \'*\' \
--ws --ws.addr 127.0.0.1 --ws.port 8036 --ws.origins \'*\' 