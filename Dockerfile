# Use liquibase image
FROM liquibase/liquibase:latest

USER root

# Copy update.sh script and make it executable
COPY . /lb-migrations-fargate/

RUN chmod +x /lb-migrations-fargate/update.sh

# Run liquibase update
ENTRYPOINT ["/lb-migrations-fargate/update.sh"]
