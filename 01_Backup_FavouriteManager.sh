#!/bin/bash

# MySQL DataBase Config
DB_USER="root"
DB_PASSWORD="root"
DB_NAME="favouritemanager"

# Backup Directory
BACKUP_DIR="C:/Users/Aelion/Documents/Thomas/ProjetFinalUtils"

# YYYYMMDD Date Format
DATE=$(date +"%Y%m%d")

# Backup File Name
BACKUP_FILE="backup-$DB_NAME-$DATE.sql"

# mysqldump command to create backup
mysqldump -u $DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_DIR/$BACKUP_FILE

# Check if backup was done successfully
if [ $? -eq 0 ]; then
  echo "Backup of database $DB_NAME was successfully created at $BACKUP_DIR/$BACKUP_FILE"
else
  echo "Error : Backup of database $DB_NAME failed."
fi

# Delete Backups older than 7 days
DAYS_TO_KEEP=7
find $BACKUP_DIR -type f -name "$DB_NAME-*.sql" -mtime +$DAYS_TO_KEEP -exec rm {} \;
