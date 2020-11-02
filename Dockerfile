FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install python python-pip -y
RUN mkdir /opt/app
COPY src/main.py /opt/app
COPY requirements.txt /opt/app
RUN pip install -r /opt/app/requirements.txt
COPY docker-entrypoint.sh /
EXPOSE 5020

ENTRYPOINT "/docker-entrypoint.sh"

