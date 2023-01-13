#!/bin/bash
RPC_USER="${RPC_USER:-}"
RPC_PASS="${RPC_PASS:-}"
WS_PORT="${WS_PORT:-8036}"
RPC_HOST="${RPC_HOST:-localhost}"

CFG_FILE=/home/blockbook/build/blockchaincfg.json

sed -i 's/\"rpc_user\":.*/\"rpc_user\": \"'${RPC_USER}'\",/g' $CFG_FILE
sed -i 's/\"rpc_pass\":.*/\"rpc_pass\": \"'${RPC_PASS}'\",/g' $CFG_FILE
sed -i 's/\"rpc_url\":.*/\"rpc_url\": \"ws:\/\/'${RPC_HOST}':'${WS_PORT}'\",/g' $CFG_FILE

exec ./blockbook -sync -blockchaincfg=/home/blockbook/build/blockchaincfg.json -debug=true -workers=${WORKERS:-1} -public=:${BLOCKBOOK_PORT:-9122} -logtostderr