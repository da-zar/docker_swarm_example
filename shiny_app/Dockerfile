FROM r-base:4.0.1

RUN apt-get update && apt-get upgrade -y

RUN R -e "install.packages('shiny')"

COPY ./src /app/src

CMD ["R", "-e", "shiny::runApp('app/src', port=3838, host='0.0.0.0')"]
