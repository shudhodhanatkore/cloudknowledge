FROM centos:latest
MAINTAINER waghmaresinnu@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://freewebsitetemplates.com/preview/hairstylesalon/index.html /var/www/html/
WORKDIR /var/www/html
RUN index.html
RUN cp -rvf index.html/* .
RUN rm -rf index.html
CMD["/usr/bin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
