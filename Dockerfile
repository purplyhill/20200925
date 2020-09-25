FROM ubuntu:latest
RUN apt-get update && apt-get install -y -q nginx
COPY ./index.html /user/share/nginx/html/
EXPOSE 80

# Nginx start
CMD ["nginx", "-g", "daemon off;"]
