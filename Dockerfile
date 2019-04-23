FROM python:2.7-alpine
MAINTAINER dnull@zeoalliance.com

COPY requirements.txt /
RUN apk add --no-cache --virtual .build-deps \
 gcc musl-dev libffi-dev openssl-dev && \
 pip install --no-cache-dir -r /requirements.txt && \
 apk del .build-deps


