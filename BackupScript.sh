#!/bin/bash

# Configuration de la base de données MySQL
DB_USER="root"
DB_PASSWORD="root"
DB_NAME="favouritemanager"

# Répertoire de sauvegarde
BACKUP_DIR="C:/Users/Aelion/Documents/Thomas/ProjetFinalBackup"

# Date au format YYYYMMDD
DATE=$(date +"%Y%m%d")

# Nom du fichier de sauvegarde
BACKUP_FILE="$DB_NAME-$DATE.sql"

# Commande mysqldump pour effectuer la sauvegarde
mysqldump -u $DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_DIR/$BACKUP_FILE

# Vérification de la réussite de la sauvegarde
if [ $? -eq 0 ]; then
  echo "La sauvegarde de la base de données $DB_NAME a été créée avec succès dans $BACKUP_DIR/$BACKUP_FILE"
else
  echo "Erreur : la sauvegarde de la base de données $DB_NAME a échoué."
fi

# Supprimer les sauvegardes plus anciennes que X jours (facultatif)
# Vous pouvez définir la durée de rétention souhaitée ici (par exemple, 7 jours).
# Supprimer les sauvegardes qui dépassent cette durée.
DAYS_TO_KEEP=7
find $BACKUP_DIR -type f -name "$DB_NAME-*.sql" -mtime +$DAYS_TO_KEEP -exec rm {} \;
