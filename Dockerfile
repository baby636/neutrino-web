FROM alpine:3.7
RUN apk add --update --no-cache curl bash

FROM nginx:1.23.1
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY .build/ /usr/share/nginx/html/

#CMD ["bash"]
