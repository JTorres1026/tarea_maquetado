FROM nginx:latest

# Copiar los archivos del sitio web al directorio de contenido de Nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80 para acceder al sitio web
EXPOSE 80

# Comando por defecto para ejecutar Nginx
CMD ["nginx", "-g", "daemon off;"]
