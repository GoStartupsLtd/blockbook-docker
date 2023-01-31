#!/bin/bash

WS_RPC_HOST="${WS_RPC_HOST:-localhost}"
WS_RPC_PORT="${WS_RPC_PORT:-8547}"

HTTP_RPC_HOST="${HTTP_RPC_HOST:-localhost}"
HTTP_RPC_PORT="${HTTP_RPC_PORT:-8546}"

CFG_FILE=/home/blockbook/build/blockchaincfg.json

sed -i 's/\"rpc_url\":.*/\"rpc_url\": \"ws:\/\/'${WS_RPC_HOST}':'${WS_RPC_PORT}'\",/g' $CFG_FILE

#HTTP - If WS is down
#sed -i 's/\"rpc_url\":.*/\"rpc_url\": \"http:\/\/'${HTTP_RPC_HOST}':'${HTTP_RPC_PORT}'\",/g' $CFG_FILE

exec ./blockbook -sync -blockchaincfg=/home/blockbook/build/blockchaincfg.json -debug=true -workers=${WORKERS:-1} -public=:${BLOCKBOOK_PORT:-9137} -logtostderr