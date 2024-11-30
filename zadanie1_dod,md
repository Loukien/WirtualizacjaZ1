#czesc nieobowiazkowa
#Budowanie i wysyłanie obrazu do DockerHub
docker buildx build --platform linux/amd64,linux/arm64 -t kacpas/zadanie1:multiarch --push .

#testowanie
docker run -d -p 5000:5000 kacpas/zadanie1:multiarch
