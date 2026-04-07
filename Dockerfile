FROM httpd
COPY ./index.html /usr/local/apache2/htdocs/
RUN apt-get update
RUN apt-get install ansible -y
EXPOSE 85