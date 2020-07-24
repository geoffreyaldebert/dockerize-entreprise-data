#!/bin/bash
docker exec -it ${PWD##*/}_web_1 bundle exec rake rna_as_api:import_last_monthly_stocks

