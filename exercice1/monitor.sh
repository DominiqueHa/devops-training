#!/bin/bash
# Script de monitoring — Exercice 1

echo "=============================="
echo "  RAPPORT SYSTÈME"
echo "  $(date '+%Y-%m-%d %H:%M:%S')"
echo "=============================="

echo ""
echo "--- Espace disque ---"
df -h / | awk 'NR==2{printf "Utilisé: %s / Total: %s (%s)\n", $3, $2, $5}'

echo ""
echo "--- Mémoire ---"
free -h | awk 'NR==2{printf "Utilisée: %s / Total: %s\n", $3, $2}'

echo ""
echo "--- Containers Docker actifs ---"
COUNT=$(docker ps --format "{{.Names}}" | wc -l)
if [ $COUNT -eq 0 ]; then
    echo "Aucun container en cours"
else
    docker ps --format "  ▶ {{.Names}} ({{.Image}})"
fi

echo ""
echo "=============================="
echo "  Fin du rapport"
echo "=============================="
