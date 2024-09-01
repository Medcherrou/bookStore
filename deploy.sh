#!/bin/bash

set -e

# Ensure Ruby is set to the correct version
rvm use 3.0.0 --default
ruby -v

# Add any modified or untracked files
git add -A

# Commit the changes with a message
git commit -m "Auto-commit during deployment"

# Deploy to Heroku
git push heroku main
