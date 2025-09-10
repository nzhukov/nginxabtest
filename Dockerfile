FROM nginx:alpine

# Копируем файлы конфигурации и HTML
COPY nginx.conf /etc/nginx/nginx.conf
COPY index-a.html /usr/share/nginx/html/index-a.html
COPY index-b.html /usr/share/nginx/html/index-b.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
