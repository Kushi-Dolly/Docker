FROM nginx:latest 
LABEL "EMAIL" = "mavrick202@gmail.com"
RUN apt update
RUN apt install -y curl net-tools jq unzip
COPY index.html /usr/share/nginx/html/
COPY scorekeeper.js /usr/share/nginx/html/
RUN style.css /usr/share/nginx/html/
#COPY error.html /usr/share/nginx/html/
#COPY ngnix_default.config /etc/nginx/sites-enabled/default
CMD ["nginx", "-g", "daemon off;"]
