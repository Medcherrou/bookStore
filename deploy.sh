#!/bin/bash

set -e

rvm use 3.0.0 --default
ruby -v

# Heroku deployment commands here
git push heroku main
