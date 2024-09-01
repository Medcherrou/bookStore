#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Use the correct Ruby version
rvm use 3.0.0 --default
ruby -v

# Create a new temporary branch
git checkout -b deploy-branch

# Stage and commit any modified or untracked files
git add -A  # Stage all changes
git commit -m "Auto-commit changes during deployment"

# Push the temporary branch to Heroku
git push heroku deploy-branch:refs/heads/main --force

# Clean up by deleting the temporary branch
git checkout -
git branch -D deploy-branch
