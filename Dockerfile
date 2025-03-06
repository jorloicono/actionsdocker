FROM node:14

# Crea y usa un directorio de trabajo
WORKDIR /app

# Copia el archivo package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto del código de la aplicación
COPY . .

# Expone el puerto 8080
EXPOSE 8080

# Comando por defecto para correr la aplicación
CMD ["node", "index.js"]
