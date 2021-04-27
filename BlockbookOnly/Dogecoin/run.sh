#!/bin/bash

RPC_USER="${RPC_USER:-user}"
RPC_PASS="${RPC_PASS:-pass}"
RPC_HOST="${RPC_HOST:-localhost}"
RPC_PORT="${RPC_PORT:-22555}"

CFG_FILE=/home/blockbook/build/blockchaincfg.json

sed -i 's/\"rpc_user\":.*/\"rpc_user\": \"'${RPC_USER}'\",/g' $CFG_FILE
sed -i 's/\"rpc_pass\":.*/\"rpc_pass\": \"'${RPC_PASS}'\",/g' $CFG_FILE
sed -i 's/\"rpc_url\":.*/\"rpc_url\": \"http:\/\/'${RPC_HOST}':'${RPC_PORT}'\",/g' $CFG_FILE


exec ./blockbook -sync -blockchaincfg=/home/blockbook/build/blockchaincfg.json -workers=${WORKERS:-1}