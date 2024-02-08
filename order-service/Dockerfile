# Gunakan node image versi 14.21
FROM node:14.21-alpine as builder

# Set working directory ke /app
WORKDIR /app

# Copy package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy seluruh aplikasi ke dalam container
COPY . .

# Expose port 3000
EXPOSE 3000

# Command untuk menjalankan aplikasi
CMD ["npm", "start"]