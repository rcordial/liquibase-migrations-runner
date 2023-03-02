#!/bin/sh

# Go to build folder
cd /lb-migrations-fargate/build/

# Run liquibase update using the master changelog
liquibase \
--username=$PGUSER --password=$PGPASSWORD \
--url=jdbc:postgresql://$PGHOST:$PGPORT/$PGDATABASE \
--hub-mode=off --secure-parsing=false \
--changeLogFile=changelogs/master.xml \
update
