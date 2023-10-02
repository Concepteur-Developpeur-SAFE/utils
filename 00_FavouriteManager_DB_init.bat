@echo off
set MYSQL_USER=root
set MYSQL_PASSWORD=root
set MYSQL_HOST=localhost
set DATABASE_NAME=favouritemanager

mysql -u%MYSQL_USER% -p%MYSQL_PASSWORD% -h%MYSQL_HOST% -e "CREATE DATABASE IF NOT EXISTS %DATABASE_NAME%;"
mysql -u%MYSQL_USER% -p%MYSQL_PASSWORD% -h%MYSQL_HOST% %DATABASE_NAME% -e ^
"^
DROP USER IF EXISTS 'user'@'localhost';^
FLUSH PRIVILEGES;CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';^
GRANT ALL PRIVILEGES ON %DATABASE_NAME%.* TO 'user'@'localhost';^
CREATE DATABASE IF NOT EXISTS %DATABASE_NAME%;^
USE %DATABASE_NAME%;^
DROP TABLE IF EXISTS `favourite`;^
CREATE TABLE `favourite` (^
    `Id` INT AUTO_INCREMENT PRIMARY KEY,^
    `Label` VARCHAR(50),^
    `Link` VARCHAR(50),^
    `UpdatedAt` DATE,^
    `CategoryId` INT,^
    `IsValid` bool^
);^
DROP TABLE IF EXISTS `category`;^
CREATE TABLE `category` (^
    `id` INT AUTO_INCREMENT PRIMARY KEY,^
    `label` VARCHAR(50)^
);^


echo Done!
