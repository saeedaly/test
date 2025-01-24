FROM ubuntu
RUN apt update
RUN command apt install -y apache2
COPY index.html /tmp/
RUN mv /tmp/index.html /var/www/html
RUN service apache2 restart 
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]