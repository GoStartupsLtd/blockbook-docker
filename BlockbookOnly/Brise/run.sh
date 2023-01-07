#!/bin/bash
RPC_HOST="${RPC_HOST:-localhost}"
RPC_PORT="${RPC_PORT:-8545}"
WS_PORT="${WS_PORT:-8036}"
ADDRESS="${ADDRESS:-0.0.0.0}"
PORT="${PORT:-30303}"
SYNCMODE="${full}"
EXTRAFLAGS="${EXTRAFLAGS:-}"
BOOTNODES="${BOOTNODES:-}"

CFG_FILE=/home/blockbook/build/blockchaincfg.json

sed -i 's/\"rpc_url\":.*/\"rpc_url\": \"ws:\/\/'${RPC_HOST}':'${WS_PORT}'\",/g' $CFG_FILE

exec ./blockbook -sync -blockchaincfg=/home/blockbook/build/blockchaincfg.json -debug=true -workers=${WORKERS:-1} -public=:${BLOCKBOOK_PORT:-9122} -logtostderr