FROM python:3.8.8-alpine3.13

COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]