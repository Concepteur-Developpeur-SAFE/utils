#!/bin/bash

# Variables
solution_path="FavouriteManager\FavouriteManager.sln"               # Path to your .NET solution
publish_dir="FavouriteManager\bin\release"                          # Publish Directory
test_project="FavouriteManagerTest\FavouriteManagerTest.csproj"     # Testing Project

# Step 1 : Build
dotnet build "$solution_path" --configuration Release

# Step 2 : Tests
dotnet test "$test_project" --configuration Release

# Step 3 : projet pusblishing
dotnet publish "$solution_path" --configuration Release --output "$publish_dir"
