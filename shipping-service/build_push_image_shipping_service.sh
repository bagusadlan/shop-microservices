#!/bin/bash

# Membuat Docker image dari Dockerfile
docker build -t shipping-service:latest .

# Daftar image di lokal
docker images

# Mengubah nama image sesuai dengan format Github Packages
docker tag shipping-service:latest ghcr.io/bagusadlan/shipping-service:latest

# Login ke Github Packages
echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u bagusadlan --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/bagusadlan/shipping-service:latest