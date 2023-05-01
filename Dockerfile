FROM python:3.7-alpine

#Add gcc
RUN apk add --no-cache build-base gcc bash
RUN apk add git busybox-extras

#Install librdkafka
#https://github.com/confluentinc/confluent-kafka-python/issues/1466 
RUN wget -q https://github.com/confluentinc/librdkafka/archive/refs/tags/v2.1.0.zip && \
    unzip v2.1.0.zip && \
    rm v2.1.0.zip && \
    cd librdkafka-2.1.0 && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf librdkafka-2.1.0

COPY requirements.txt .
RUN python -m pip install --upgrade pip
RUN python -m pip install -r requirements.txt

RUN apk del build-base gcc

WORKDIR /app
CMD tail -f /dev/null