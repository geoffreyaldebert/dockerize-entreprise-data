#!/bin/bash
# You have to move your JDK 8 tar.gz into web folder first
mkdir -p tmp/db
cd web && git clone git@github.com:etalab/rna_as_api.git
mv database.yml rna_as_api/config/


