FROM centos: latest
MAINTAINER waghmaresinnu@gmail.com
RUN yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page274/resto.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip resto.zip
RUN cp -rvf markups-resto/*.
RUN rm -rf_MACOSX markups-resto resto.zip
CMD["/usr/bin/httpd","-D","FOREGROUND"]
EXPOSE 80
