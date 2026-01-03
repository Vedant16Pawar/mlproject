FROM python:3.8-slim-bullseye

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip \
    && pip install awscli \
    && pip install -r requirements.txt

CMD ["python", "app.py"]
