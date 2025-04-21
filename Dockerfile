FROM python:3.8

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install --upgrade pip

RUN pip install wheel setuptools 'awsebcli==3.22.1'

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]