FROM narenas/python-jenkins:0.1

USER root

COPY project /opt/my-api

RUN apk add --no-cache postgresql-libs && \
    apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev && \
    pip install -r /opt/my-api/requirements.txt

CMD ["/usr/local/bin/python" , "/opt/my-api/run.py"]
