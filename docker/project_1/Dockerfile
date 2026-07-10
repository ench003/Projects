FROM nginx
LABEL version="1.1"
LABEL description="Два сайта в одном проекте"

WORKDIR /other

COPY site1 /usr/share/nginx/html/site1
COPY site2 /usr/share/nginx/html/site2
COPY welcome.sh /other/welcome.sh
COPY default.conf /etc/nginx/conf.d/default.conf

RUN chmod +x /other/welcome.sh
RUN echo "/other/welcome.sh" >> /root/.bashrc
RUN apt update && apt install -y curl

EXPOSE 80
