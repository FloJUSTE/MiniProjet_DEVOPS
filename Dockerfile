FROM nginx:1.21.6
COPY nginx/default.conf /etc/nginx/conf.d/
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY /app ./

CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
