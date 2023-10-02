# Utils

## 00_FavouriteManager_DB_init.bat

FavouriteManager database initialization script. Creates a database and an associated user.


## 01_Backend_Workflow.sh

CI/CD Workflow for backend deployment. Don't forget to specify `solution_path`, `publish_dir` and `test_project`.


## 02_Frontend_Workflow.sh

CI/CD Workflow for frontend deployment. Don't forget to specify `ANGULAR_APP_NAME` and `ANGULAR_PROJECT_DIR`.


## 03_Backup_FavouriteManager_database.sh

Script that creates a backup of the database, don't forget to specify `DB_USER`, `DB_PASSWORD` and `DB_NAME`.

You can also specify the backup directory by specifying `BACKUP_DIR`.

⚠️ If you're running on windows, make sure that the PATH variable includes path towards `mysqldump` ("C:\Program Files\MySQL\MySQL Server 8.0\bin")⚠️


## 03_linux_everyday_backup_task.txt

Simple command to create a cron job that will run the backup script every day at 23:59:00.


## 03_windows_everyday_backup_task.txt

Simple command to create a windows task that will run the backup script every day at 23:59:00.


## 04_ValidateLink.bat

Bot which will analyze the links in the database in order to detect dead links, updates the database accordingly.