CONFIG_PATH=/data/options.json
AMCREST_HOST="$(basshio::config 'AMCREST_HOST')"
python  -u /app/amcrest2mqtt.py
