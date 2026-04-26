# Image de base : Nginx sur Alpine Linux (légère)
FROM nginx:alpine

# Qui maintient cette image
LABEL maintainer="fasromeo"

# Dossier de travail dans le container
WORKDIR /usr/share/nginx/html

# Supprimer la page par défaut de Nginx
RUN rm -rf ./*

# Copier notre page HTML dans le container
COPY index.html .

# Déclarer le port exposé
EXPOSE 80

# Nginx démarre automatiquement avec l'image de base
CMD ["nginx", "-g", "daemon off;"]
