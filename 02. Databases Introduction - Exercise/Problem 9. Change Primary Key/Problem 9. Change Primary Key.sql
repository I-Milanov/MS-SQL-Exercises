ALTER TABLE Users
  DROP CONSTRAINt PK_IdUsername

ALTER TABLE Users
  ADD CONSTRAINT PK_IdUsername PRIMARY KEY (Id,Username)

  DELETE FROM Users