#!/bin/bash
docker exec -it ${PWD##*/}_rna_1 bundle exec rake rna_as_api:import_last_monthly_stocks

