#!/bin/bash


RPC_HOST="${RPC_HOST:-localhost}"
RPC_PORT="${RPC_PORT:-8332}"


CFG_FILE=/home/blockbook/build/blockchaincfg.json

sed -i 's/\"rpc_url\":.*/\"rpc_url\": \"wss:\/\/tiniest-responsive-friday.quiknode.pro\/89df52c1f3cf3a83bc0ffe3de395cc71cf7b1733\",/g' $CFG_FILE

exec ./blockbook -sync -blockchaincfg=/home/blockbook/build/blockchaincfg.json -workers=${WORKERS:-1} -public=:${BLOCKBOOK_PORT:-9136} -logtostderr -resyncindexperiod=60000 -resyncmempoolperiod=50213