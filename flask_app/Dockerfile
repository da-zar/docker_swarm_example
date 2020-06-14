FROM python:3.7-slim-buster

RUN apt-get update && apt-get upgrade -y

RUN pip install Flask==1.1.1

COPY ./src /app/src

CMD ["python", "app/src/app.py"]
