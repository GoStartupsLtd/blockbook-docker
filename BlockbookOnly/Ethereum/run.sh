#!/bin/bash


RPC_HOST="${RPC_HOST:-localhost}"
RPC_PORT="${RPC_PORT:-8332}"
EXTRAFLAGS="${EXTRAFLAGS}"


CFG_FILE=/home/blockbook/build/blockchaincfg.json

sed -i 's/\"rpc_url\":.*/\"rpc_url\": \"ws:\/\/'${RPC_HOST}':'${RPC_PORT}'\",/g' $CFG_FILE

exec ./blockbook -sync -blockchaincfg=/home/blockbook/build/blockchaincfg.json -debug=true -workers=${WORKERS:-1} -public=:${BLOCKBOOK_PORT:-9136} -logtostderr ${EXTRAFLAGS}