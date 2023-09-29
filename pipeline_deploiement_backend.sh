#!/bin/bash

# Variables
solution_path="FavouriteManager\FavouriteManager.sln"               # Chemin vers votre solution .NET
publish_dir="FavouriteManager\bin\release"                          # Dossier de publication
test_project="FavouriteManagerTest\FavouriteManagerTest.csproj"     # Projet de tests unitaires

# Step 1 : Build
dotnet build "$solution_path" --configuration Release

# Step 2 : Tests
dotnet test "$test_project" --configuration Release

# Step 3 : Publication du projet
dotnet publish "$solution_path" --configuration Release --output "$publish_dir"

# Step 4 : Déploiement (Exemple : Copie vers un serveur distant)
# Assurez-vous de personnaliser cette étape en fonction de votre environnement de déploiement
# Vous pouvez utiliser SSH, FTP, ou tout autre moyen de transfert de fichiers

# remote_server="user@votreserveur.com"
# remote_path="/var/www/monprojet" # Chemin sur le serveur où vous souhaitez déployer le projet

# echo "Déploiement en cours vers $remote_server:$remote_path"

# Copie des fichiers vers le serveur distant (utilisez rsync, scp, ou tout autre outil de votre choix)
# rsync -avz "$publish_dir/" "$remote_server:$remote_path"

# echo "Déploiement terminé sur $remote_server:$remote_path"
