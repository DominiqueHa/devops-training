#!/bin/bash

HEURE=$(date +%H)

if [ $HEURE -lt 12 ]; then
    echo "Bonjour ! Bonne matinée."
elif [ $HEURE -lt 18 ]; then
    echo "Bon après-midi !"
else
    echo "Bonne soirée !"
fi

# Vérifier si un fichier existe
FICHIER="$HOME/devops-training/logs/journal.txt"

if [ -f "$FICHIER" ]; then
    echo "Le fichier journal existe."
else
    echo "Le fichier journal n'existe pas."
fi
