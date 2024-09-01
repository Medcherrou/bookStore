#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Use the correct Ruby version
rvm use 3.0.0 --default
ruby -v

# Force push to Heroku, ignoring uncommitted changes
git push heroku main --force
