FROM nginx 

COPY nginx.conf /etc/nginx/nginx.conf
COPY docker_vdymyr_pp_ua.conf /etc/nginx/vhost/docker_vdymyr_pp_ua.conf
COPY fastcgi.conf /etc/nginx/fastcgi.conf
COPY fullchain.pem /etc/letsencrypt/live/docker.vdymyr.pp.ua/fullchain.pem
COPY privkey.pem /etc/letsencrypt/live/docker.vdymyr.pp.ua/privkey.pem
COPY ./  /var/www/docker.vdymyr.pp.ua


EXPOSE 81

CMD ["nginx", "-g", "daemon off;"]

