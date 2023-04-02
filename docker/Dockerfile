FROM nginx:stable-alpine3.17-slim
LABEL maintainer="eminox2101@gmail.com"
ADD https://github.com/ssvitto/test-bg.git .
COPY ./html/index.html /usr/share/nginx/html
RUN sed -i 's/80/8080/g' /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]