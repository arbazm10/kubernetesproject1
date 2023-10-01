FROM centos
MAINTAINER arbazmtn@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page286/coto.zip  /var/www/html/
 WORKDIR  /var/www/html
 RUN unzip coto.zip
 RUN cp -rvf html/* .
 RUN rm -rf html  coto.zip
 CMD ["/usr/bin/httpd", "-D",   "FOREGROUND"]
 EXPOSE 80

