FROM r-base:4.0.1

RUN apt-get update && apt-get upgrade -y

RUN R -e "install.packages('plumber')"

COPY ./src /app/src

CMD ["R", "-e", "plumber::plumb('app/src/app.R')$run(port=8000, host='0.0.0.0')"]
