FROM nginx
COPY index.html /usr/share/nginx/html/index.html
RUN echo "server { listen 80; location / { root /usr/share/nginx/html; } location /stub_status { stub_status; } }" > /etc/nginx/conf.d/default.conf
