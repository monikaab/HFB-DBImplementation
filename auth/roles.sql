CREATE ROLE db_admin;
CREATE ROLE application_user;
CREATE ROLE read_only_user;

GRANT ALL ON DATABASE "HoustonFoodBank" to db_admin WITH GRANT OPTION;

GRANT SELECT ON person to applcation_user;
GRANT INSERT ON person to application_user;
GRANT DELETE ON person to application_user;
GRANT UPDATE ON person to application_user;

GRANT SELECT ON DATABASE "HoustonFoodBank" to read_only_user;