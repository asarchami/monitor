FROM debian:buster
MAINTAINER Ali Sarchami "Ali Sarchami"

RUN apt-get update && \
    apt-get install -y curl vim  python3 python3-dev python3-pip git

ADD pip.conf /root/.pip/pip.conf
ADD monitor /app

WORKDIR /app
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "monitor.py"]
