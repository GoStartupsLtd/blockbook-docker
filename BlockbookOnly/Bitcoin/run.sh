#!/bin/bash

RPC_USER="${RPC_USER:-user}"
RPC_PASS="${RPC_PASS:-pass}"
RPC_HOST="${RPC_HOST:-localhost}"
RPC_PORT="${RPC_PORT:-8332}"
MQ_PORT="${MQ_URL:-29000}"

CFG_FILE=/home/blockbook/build/blockchaincfg.json

sed -i 's/\"rpc_user\":.*/\"rpc_user\": \"'${RPC_USER}'\",/g' $CFG_FILE
sed -i 's/\"rpc_pass\":.*/\"rpc_pass\": \"'${RPC_PASS}'\",/g' $CFG_FILE
sed -i 's/\"rpc_url\":.*/\"rpc_url\": \"http:\/\/'${RPC_HOST}':'${RPC_PORT}'\",/g' $CFG_FILE
sed -i 's/\"message_queue_binding\":.*/\"message_queue_binding\": \"tcp:\/\/'${RPC_HOST}':'${MQ_PORT}'\",/g' $CFG_FILE



exec ./blockbook -sync -blockchaincfg=/home/blockbook/build/blockchaincfg.json -debug -workers=${WORKERS:-1} -public=:${BLOCKBOOK_PORT:-9130}