FROM python:3.10-slim-buster
LABEL maintainer="vitaliisili.com"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
ENTRYPOINT ["/app/scripts/entrypoint.sh"]
