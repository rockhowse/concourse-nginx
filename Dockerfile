# sample taken from 
# https://medium.com/myriatek/using-docker-to-run-a-simple-nginx-server-75a48d74500b

FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html