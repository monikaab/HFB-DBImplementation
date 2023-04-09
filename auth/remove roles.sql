REVOKE ALL ON DATABASE "HoustonFoodBank" from db_admin;
REVOKE ALL ON DATABASE "HoustonFoodBank" from application_user;
REVOKE ALL ON DATABASE "HoustonFoodBank" from db_admin;

DROP ROLE IF EXISTS application_user;
DROP ROLE IF EXISTS read_only_user;
DROP ROLE IF EXISTS db_admin