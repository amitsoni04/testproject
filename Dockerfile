FROM ubuntu:latest

RUN apt update && apt install -y apache2

RUN echo "Jhalak I love you" > /var/www/html/index.html

CMD ["apachectl","-D","FOREGROUND"]

EXPOSE 80
