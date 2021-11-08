# sample taken from 
# https://medium.com/myriatek/using-docker-to-run-a-simple-nginx-server-75a48d74500b

FROM nginx:1.20.1-alpine
COPY index.html /usr/share/nginx/html/index.html