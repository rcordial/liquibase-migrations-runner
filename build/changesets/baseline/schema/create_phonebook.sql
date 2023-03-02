--liquibase formatted sql
--changeset rcordial:insert_phone_book_table context:fixture splitStatements:false rollbackSplitStatements:false
--comment: Create phone book table

CREATE TABLE
    phonebook (
        phone VARCHAR(32),
        firstname VARCHAR(32),
        lastname VARCHAR(32),
        address VARCHAR(64)
    );