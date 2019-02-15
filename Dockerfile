FROM python:3.7

WORKDIR /app

COPY Pipfile /app
COPY Pipfile.lock /app

RUN pip install pipenv
RUN pipenv install --system --deploy

COPY . /app

ENV FLASK_APP=src/callreduction/app.py
ENV FLASK_RUN_PORT=80

CMD flask run --host 0.0.0.0

