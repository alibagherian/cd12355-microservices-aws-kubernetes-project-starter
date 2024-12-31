FROM python:3.8-slim
WORKDIR /workspace/analytics

COPY requirements.txt ./workspace/analytics
RUN apt update -y
RUN apt install -y build-essential libpq-dev
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt



ENV export DB_USERNAME=admin
ENV export DB_PASSWORD=${POSTGRES_PASSWORD}
ENV export DB_HOST=127.0.0.1
ENV export DB_PORT=5433
ENV export DB_NAME=coworking-project


CMD python app.py