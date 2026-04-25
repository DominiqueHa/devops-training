#!/bin/bash
# Script de monitoring système simple

echo "=============================="
echo "  MONITORING SYSTÈME"
echo "  $(date)"
echo "=============================="

echo ""
echo "--- Utilisation CPU ---"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU utilisé : " $2 "%"}'

echo ""
echo "--- Mémoire ---"
free -h | awk 'NR==2{printf "Utilisée: %s / Total: %s\n", $3, $2}'

echo ""
echo "--- Espace disque ---"
df -h / | awk 'NR==2{printf "Utilisé: %s / Total: %s (%s)\n", $3, $2, $5}'

echo ""
echo "--- Processus actifs ---"
ps aux --no-headers | wc -l | awk '{print "Nombre de processus : " $1}'
