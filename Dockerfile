FROM python:3.8-alpine

RUN mkdir /opt/sampleapp
WORKDIR /opt/sampleapp
COPY . /opt/sampleapp

CMD ["python", "main.py"]

