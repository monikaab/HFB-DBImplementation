CREATE ROLE db_admin;
CREATE ROLE application_user;
CREATE ROLE read_only_user;

GRANT ALL ON DATABASE "HoustonFoodBank" to db_admin WITH GRANT OPTION;

-- GRANT SELECT ON person to application_user;
-- GRANT INSERT ON person to application_user;
-- GRANT DELETE ON person to application_user;
-- GRANT UPDATE ON person to application_user;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO application_user;

GRANT SELECT ON ALL TABLES IN SCHEMA public TO read_only_user;