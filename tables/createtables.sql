CREATE TABLE person (
  ID VARCHAR(10),
  name name_domain,
  Email email_domain,
  DOB DOB,
  sex sex_domain,
  PRIMARY KEY (ID)
);

CREATE EXTENSION pgcrypto;

CREATE TABLE employee (
	ID VARCHAR(10),
	name name_domain,
	email email_domain,
	DOB DOB,
  	sex sex_domain,
	username varchar(20),
	password TEXT NOT NULL,
	FOREIGN KEY (id) REFERENCES person
);
