ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN mkdir /install
WORKDIR /install

COPY requirements.txt /
RUN pip install --prefix=/install -r /requirements.txt

FROM base
COPY --from=builder /install /usr/local
COPY src /app
WORKDIR /app
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
