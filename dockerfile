# Etap budowania
FROM python:3.9-slim as build

# Informacje o autorze
LABEL maintainer="Kacper Pasturczak"

# Instalacja zależności
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopiowanie aplikacji
COPY . .

# Etap końcowy
FROM python:3.9-slim

# Informacje o autorze
LABEL maintainer="Kacper Pasturczak"

# Kopiowanie aplikacji z poprzedniego etapu
WORKDIR /app
COPY --from=build /app .

# Porty i zmienne środowiskowe
ENV PORT=5000
EXPOSE 5000

# Komenda startowa
CMD ["python", "zadanie.py"]