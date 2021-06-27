#!/bin/sh

echo "==== INITIAILISING IRIS HUB ===="
iris init local-002 --chain-id=irishub-1 --home /app/iris/

apk --no-cache add curl

curl -o /app/iris/config/config.toml https://raw.githubusercontent.com/irisnet/mainnet/master/config/config.toml

curl -o /app/iris/config/genesis.json https://raw.githubusercontent.com/irisnet/mainnet/master/config/genesis.json

echo "==== STARTING IRIS HUB ===="
iris start --home /app/iris/
