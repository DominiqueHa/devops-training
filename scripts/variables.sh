#!/bin/bash

# Déclarer des variables
NOM="fasromeo"
PROJET="devops-training"
VERSION=1

# Les utiliser
echo "Utilisateur : $NOM"
echo "Projet : $PROJET"
echo "Version : $VERSION"

# Variable dynamique (résultat d'une commande)
DATE_AUJOURD_HUI=$(date +%Y-%m-%d)
echo "Date : $DATE_AUJOURD_HUI"

# Calcul simple
TOTAL=$((3 + 5))
echo "3 + 5 = $TOTAL"
