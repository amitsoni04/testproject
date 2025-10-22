FROM ubuntu:latest

RUN apt update && apt -y install apache2

COPY ./index.html /var/www/html/

CMD ["apachectl","-D","FOREGROUND"]

EXPOSE 80
