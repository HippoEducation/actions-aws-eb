FROM python:3

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install --upgrade pip awsebcli --use-deprecated=legacy-resolver

RUN python -m pip install requests "urllib3<2"

RUN git config --system --add safe.directory *

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
