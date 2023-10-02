#!/bin/bash

ANGULAR_APP_NAME="favourite-manager-front"

# Define the directory where your Angular project is located
ANGULAR_PROJECT_DIR="C:\Users\Aelion\Documents\Thomas\ProjetFinalFront\favourite-manager-front"

# Navigate to the Angular project directory
cd "$ANGULAR_PROJECT_DIR"

# Install project dependencies
npm install

# Build the Angular app in production mode
ng build

# Define the directory where the built app is located
BUILD_OUTPUT_DIR="./dist/$ANGULAR_APP_NAME"

# Check if the build directory exists
if [ -d "$BUILD_OUTPUT_DIR" ]; then
  echo "Deploying the Angular app to your hosting service..."
  echo "Deployment completed."
else
  echo "Build directory not found. Please check your Angular project configuration."
fi
