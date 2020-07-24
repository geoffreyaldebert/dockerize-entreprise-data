#!/bin/bash
docker exec -it ${PWD##*/}_sirene_1 bundle exec rails db:create
docker exec -it ${PWD##*/}_sirene_1 bundle exec rails db:migrate
docker exec -it ${PWD##*/}_sirene_1 RAILS_ENV=production bundle exec rake sunspot:solr:start
docker exec -it ${PWD##*/}_sirene_1 bundle exec rake sirene_as_api:populate_database





