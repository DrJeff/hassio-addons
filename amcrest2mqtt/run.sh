export amcrest_host="$(basshio::config 'AMCREST_HOST')"
python  -u /app/amcrest2mqtt.py
