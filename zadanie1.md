#budowa obrazu
docker build -t zadanie1:latest .
#uruchomienie kontenerera
docker run -d -p 5000:5000 --name zadanie1_server zadanie1:latest
#sprawdzenie logów
docker logs zadanie1_server
#sprawdzenie warstw
docker history zadanie1:latest
