#!/bin/sh

echo "==== INITIAILISING IRIS HUB ===="
iris init local-002 --chain-id=irishub-1 --home /app/iris/

apk --no-cache add curl

echo "==== DOWNLOADING config.json ===="
if ! [ -f /app/iris/config/config.toml ]; then
  curl -o /app/iris/config/config.toml https://raw.githubusercontent.com/irisnet/mainnet/master/config/config.toml
else
  echo "==== /app/iris/config/config.toml EXISTS ALREADY ===="
fi

echo "==== DOWNLOADING genesis.json ===="
if ! [ -f /app/iris/config/genesis.json ]; then
  curl -o /app/iris/config/genesis.json https://raw.githubusercontent.com/irisnet/mainnet/master/config/genesis.json
else
  echo "==== /app/iris/config/genesis.json EXISTS ALREADY ===="
fi


echo "==== STARTING IRIS HUB ===="
iris start --home /app/iris/
