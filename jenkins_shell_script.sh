#!/bin/bash

# Jenkins "Execute Shell" kısmına yapıştırılacak komutlar

echo "--- CI/CD Basliyor ---"

# 1. Konteynır kontrolü ve temizlik
# Eğer aynı isimde bir konteynır varsa durdur ve sil
if [ "$(docker ps -aq -f name=spring-app)" ]; then
    echo "Eski konteynır durduruluyor..."
    docker stop spring-app
    docker rm spring-app
fi

# 2. Docker Imajini Build Et
echo "Yeni imaj olusturuluyor..."
docker build -t cicd-demo-image .

# 3. Yeni Konteynırı Calistir
# Port 8081 üzerinden yayınlıyoruz (localhost:8081)
echo "Yeni konteynır baslatiliyor..."
docker run -d --name spring-app -p 8081:8080 cicd-demo-image

echo "--- CI/CD Tamamlandi! Uygulama localhost:8081 adresinde yayinda. ---"
