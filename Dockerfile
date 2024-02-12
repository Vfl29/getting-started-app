# Utilisez une image Node.js officielle.
FROM node:21-alpine3.18

# Créez un répertoire dans le conteneur pour les fichiers source de l'application.
WORKDIR /usr/src/app

# Copiez les fichiers source de l'application dans le répertoire de travail.
COPY . .

# On utilise yarn pour packager l'application node en se basant sur le descripteur "package.json"
RUN yarn install --production

# Exposez le port que l'application utilise.
EXPOSE 3000

# On dit à l'image quelle commande doit être exécutée au démarrage d'un conteneur
CMD [ "node","src/index.js" ]
