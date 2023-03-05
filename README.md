# liquibase-migrations-runner
Liquibase migrations runner, using a liquibase/liquibase base docker layer and a sample changelogs/changeset to run as standalone ECS tasks in Fargate


# Run command
```bash
docker run --env=PGUSER=<user> --env=PGPASSWORD=<pass> --env=PGHOST=<postgres ip/host> --env=PGPORT=5432 --env=PGDATABASE=<db name> lb-migrations-fargate:latest
```
