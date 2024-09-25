# Usar una imagen base de Node.js (versión 14)
FROM node:14

# Crear y establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo package.json y package-lock.json (si existe)
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el resto de los archivos del proyecto
COPY . .

# Exponer el puerto en el que se ejecutará la aplicación
EXPOSE 3000

# Definir el comando para iniciar la aplicación
CMD ["node", "index.js"]
