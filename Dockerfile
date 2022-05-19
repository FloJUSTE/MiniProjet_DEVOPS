FROM nginx:1.21.6
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY /app ./

CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'
