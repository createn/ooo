#!/bin/sh
if [ ! -f UUID ]; then
  UUID="882d6936-fc6e-45bb-88ee-2c43fdacf578"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

