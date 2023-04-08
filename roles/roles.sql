CREATE ROLE application_user;
CREATE ROLE read_only_user;

CREATE ROLE db_admin;

GRANT SELECT ON person to db_admin;
GRANT INSERT ON person to db_admin;
GRANT DELETE ON person to db_admin;
GRANT UPDATE ON person to db_admin;
GRANT DROP ON person to db_admin;
