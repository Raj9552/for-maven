FROM centos/httpd
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/carvilla.zip /var/www/html
WORKDIR /var/www/html
RUN yum install unzip -y
RUN unzip carvilla.zip && rm carvilla.zip
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
