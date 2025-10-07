FROM ubuntu:latest

RUN apt update && apt install -y apache2

RUN echo "this is my ci/cd pipeline and I am learning DevOps." > /var/www/html/index.html

CMD ["apachectl","-D","FOREGROUND"]

EXPOSE 80
