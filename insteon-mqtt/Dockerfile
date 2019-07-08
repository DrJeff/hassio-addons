FROM homeassistant/amd64-homeassistant-base
RUN \
    apk add --no-cache --virtual .build-dependencies \
        python3-dev \
    \
    && apk add --no-cache \
        python3 \
        git \
    && pip3 install --upgrade virtualenv wheel \
    && git clone 'https://github.com/TD22057/insteon-mqtt.git' --branch dev /opt/insteon-mqtt \
    && pip3 install /opt/insteon-mqtt \
    && apk del --purge .build-dependencies

COPY run.sh /
RUN chmod a+x /run.sh

CMD ["/run.sh"]

