FROM python:3.8-slim
WORKDIR .

COPY requirements.txt ./
RUN apt update -y
RUN apt install -y build-essential libpq-dev
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt

COPY . .

ENV  DB_USERNAME=admin
ENV  DB_PASSWORD=${POSTGRES_PASSWORD}
ENV  DB_HOST=127.0.0.1
ENV  DB_PORT=5433
ENV  DB_NAME=coworking-project

CMD python app.py