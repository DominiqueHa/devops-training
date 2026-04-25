#!/bin/bash

# === Script de sauvegarde automatique ===
# Usage : ./sauvegarde.sh <dossier-source>

SOURCE=$1
DESTINATION="$HOME/devops-training/backup"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
NOM_ARCHIVE="backup_$DATE.tar.gz"

# Vérification : un argument a-t-il été fourni ?
if [ $# -eq 0 ]; then
    echo "ERREUR : Indique le dossier à sauvegarder."
    echo "Usage : ./sauvegarde.sh <dossier>"
    exit 1
fi

# Vérification : le dossier source existe-t-il ?
if [ ! -d "$SOURCE" ]; then
    echo "ERREUR : Le dossier '$SOURCE' n'existe pas."
    exit 1
fi

# Créer le dossier de destination si besoin
mkdir -p "$DESTINATION"

# Créer l'archive
tar -czf "$DESTINATION/$NOM_ARCHIVE" "$SOURCE"

echo "✅ Sauvegarde réussie !"
echo "   Source      : $SOURCE"
echo "   Archive     : $DESTINATION/$NOM_ARCHIVE"
echo "   Date        : $DATE"
