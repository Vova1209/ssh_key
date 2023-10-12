FROM nginx 



COPY nginx.conf /etc/nginx/nginx.conf
COPY ./  /usr/share/nginx/html
COPY ./letsencrypt /etc/letsencrypt


CMD ["nginx", "-g", "daemon off;"]

