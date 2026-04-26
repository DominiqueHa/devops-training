#!/bin/bash
# Script d'administration de la stack Docker Compose

if [ "$1" == "start" ]; then
    echo "Démarrage de la stack..."
    docker compose up -d

elif [ "$1" == "stop" ]; then
    echo "Arrêt de la stack..."
    docker compose down

elif [ "$1" == "status" ]; then
    echo "État de la stack..."
    docker compose ps

else
    echo "Usage: ./admin.sh [start|stop|status]"
    exit 1
fi
