#!/bin/bash

# Boucle sur une liste
echo "=== Mes outils DevOps ==="
for OUTIL in Git Docker Kubernetes Terraform Ansible; do
    echo "- $OUTIL"
done

# Boucle numérique
echo ""
echo "=== Compte à rebours ==="
for i in 5 4 3 2 1; do
    echo "$i..."
    sleep 1
done
echo "Lancement !"

# Boucle sur des fichiers
echo ""
echo "=== Fichiers dans scripts/ ==="
for FICHIER in ~/devops-training/scripts/*.sh; do
    echo "Script trouvé : $FICHIER"
done
