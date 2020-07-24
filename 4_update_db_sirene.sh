#!/bin/bash
docker exec -it ${PWD##*/}_sirene_1 bundle exec rake sirene_as_api:update_database


