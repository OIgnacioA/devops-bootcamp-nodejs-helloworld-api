# Usar una imagen oficial de Node.js como imagen base
FROM node:14

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo package.json y package-lock.json para instalar dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código de la aplicación
COPY . .

# Exponer el puerto en el que la aplicación escucha
EXPOSE 3000

# Definir el comando de inicio
CMD ["npm", "start"]
