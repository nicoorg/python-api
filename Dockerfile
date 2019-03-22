FROM narenas/python-jenkins:0.1

USER root

RUN   sudo apk add --no-cache postgresql-libs && \
      sudo apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev && \
      pip install -r project/requirements.txt

CMD "python project/run.py"
