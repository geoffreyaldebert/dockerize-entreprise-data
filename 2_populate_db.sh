#!/bin/bash
docker exec -it ${PWD##*/}_rna_1 bundle exec rails db:create
docker exec -it ${PWD##*/}_rna_1 bundle exec rails db:migrate
docker exec -it ${PWD##*/}_rna_1 RAILS_ENV=production bundle exec rake sunspot:solr:start
docker exec -it ${PWD##*/}_rna_1 bundle exec rake rna_as_api:import_last_monthly_stocks


docker exec -it ${PWD##*/}_sirene_1 bundle exec rails db:create
docker exec -it ${PWD##*/}_sirene_1 bundle exec rails db:migrate
docker exec -it ${PWD##*/}_sirene_1 RAILS_ENV=production bundle exec rake sunspot:solr:start
docker exec -it ${PWD##*/}_sirene_1 bundle exec rake sirene_as_api:populate_database





