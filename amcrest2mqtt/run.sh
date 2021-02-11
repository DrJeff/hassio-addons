#!/usr/bin/with-contenv bashio
CONFIG_PATH=/data/options.json
echo AMCREST_HOST="$(basshio::config 'AMCREST_HOST')"
python  -u /app/amcrest2mqtt.py
