# Utils

## Backup Script


Script that creates a backup of the database, make sure to change "DB_USER", "DB_PASSWORD" & "DB_NAME".

You can also specify the backup directory by specifying "BACKUP_DIR".

⚠️ If you're running on windows, make sure that the PATH variable includes path towards mysqldump ("C:\Program Files\MySQL\MySQL Server 8.0\bin").

## Schtask file

Simple command to create a windows task that will run the backup script every day at 23:59:00.