ARG pull_from=docker.io

FROM ${pull_from}/nginx:1.22.0 AS frontend-webserver
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/nginx.conf /etc/nginx/

#RUN find /usr/share/nginx/html/ -type d -exec chmod go+rx {} \;
#RUN find /usr/share/nginx/html/ -type f -exec chmod go+r {} \;
EXPOSE 8000
