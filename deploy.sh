#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Ensure Ruby is set to the correct version
rvm use 3.0.0 --default
ruby -v

# Stage and commit any modified or untracked files
git add -A  # This stages all changes, including untracked files
git commit -m "Auto-commit changes during deployment"

# Push the changes to Heroku
git push heroku HEAD:refs/heads/main --force  # Force push to the main branch
