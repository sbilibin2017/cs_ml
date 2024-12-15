FROM python:3.10

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src

RUN pip install poetry

COPY ../pyproject.toml pyproject.toml

RUN poetry install --only main

COPY ../app/src src