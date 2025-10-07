FROM ubuntu:latest

RUN apt update && apt install -y apache2

RUN echo "This is my CI/CD." > /var/www/html/index.html

CMD ["apachectl","-D","FOREGROUND"]

EXPOSE 80
