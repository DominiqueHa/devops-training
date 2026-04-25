#!/bin/bash

# $1, $2 = arguments passés au script
# $# = nombre d'arguments
# $0 = nom du script

echo "Nom du script : $0"
echo "Nombre d'arguments : $#"
echo "Premier argument : $1"
echo "Deuxième argument : $2"

if [ $# -eq 0 ]; then
    echo "ERREUR : Tu n'as passé aucun argument !"
    echo "Usage : ./arguments.sh <nom> <age>"
    exit 1
fi

echo "Bonjour $1, tu as $2 ans !"
