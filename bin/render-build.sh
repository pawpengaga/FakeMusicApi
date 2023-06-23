#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
#items eliminados no tenemos vistas
bundle exec rake db:migrate
bundle exec rake db:seed