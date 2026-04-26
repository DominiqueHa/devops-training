#!/bin/bash

# Variable
DISQUE=$(df -h / | awk 'NR==2{printf "Utilisé: %s / Total: %s (%s)\n", $3, $2, $5}')
MEMOIRE=$(free -h | awk 'NR==2{printf "Utilisée: %s / Total: %s\n", $3, $2}')

# Créer le fichier HTML (> écrase et recrée)
echo "<!DOCTYPE html>" > index.html
echo '<meta charset="UTF-8">' >> index.html

# Ajouter des lignes (>> ajoute à la fin)
echo "<html>" >> index.html
echo "<body>" >> index.html

# Ajouter une variable dynamique
echo "<p>Date : $(date '+%Y-%m-%d %H:%M:%S')</p>" >> index.html
echo "<p> le nom de la machine : $(hostname)</p>" >> index.html
echo "<p> --- Espace disque --- </p>" >> index.html
echo "<p> $DISQUE </p>" >> index.html
echo "<p> --- Mémoire --- </p>" >> index.html
echo "<p> $MEMOIRE </p>" >> index.html


echo "</body>" >> index.html
echo "</html>" >> index.html
