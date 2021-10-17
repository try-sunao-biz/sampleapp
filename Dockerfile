FROM python:3.8-alpine

RUN mkdir /opt/sampleapp
WORKDIR /opt/sampleapp
COPY . /opt/sampleapp

RUN apk add --no-cache --virtual .deps \
        gcc make musl-dev && \
    pip install responder && \
    pip install --upgrade typesystem==0.2.5 && \
    apk del --purge .deps

CMD ["python", "main.py"]

