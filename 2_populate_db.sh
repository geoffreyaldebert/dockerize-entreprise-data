#!/bin/bash
docker exec -it ${PWD##*/}_web_1 bundle exec rails db:create
docker exec -it ${PWD##*/}_web_1 bundle exec rails db:migrate
docker exec -it ${PWD##*/}_web_1 RAILS_ENV=production bundle exec rake sunspot:solr:start
docker exec -it ${PWD##*/}_web_1 bundle exec rake rna_as_api:import_last_monthly_stocks

