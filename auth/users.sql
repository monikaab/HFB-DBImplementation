CREATE USER akshay WITH PASSWORD 'password123';
CREATE USER monika WITH PASSWORD 'password123';
CREATE USER sowmya WITH PASSWORD 'password123';

GRANT db_admin to akshay;
GRANT application_user to monika;
GRANT read_only_user to sowmya;