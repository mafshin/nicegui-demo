FROM python:3.11.3-slim

RUN python -m pip install nicegui itsdangerous isort docutils requests

WORKDIR /app

COPY . ./

ENV PYTHONUNBUFFERED True

CMD ["python", "main.py"]