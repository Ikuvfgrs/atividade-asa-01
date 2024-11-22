FROM nginx:alpine

# Copiar todos os arquivos da pasta 'web' para dentro do diretório do Nginx
COPY web/ /usr/share/nginx/html/

EXPOSE 80

# Comando para rodar o Nginx em primeiro plano
CMD ["nginx", "-g", "daemon off;"]

