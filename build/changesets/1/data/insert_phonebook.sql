--liquibase formatted sql
--changeset rcordial:insert_phone_book_records context:fixture splitStatements:false rollbackSplitStatements:false
--comment: Insert phone book records

INSERT INTO
  phonebook (phone, firstname, lastname, address)
VALUES
  ('+1 123 456 7890', 'John', 'Doe', 'North America');

-- revert changes
--rollback DELETE FROM phonebook