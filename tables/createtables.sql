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

CREATE TABLE donor (
	ID VARCHAR(10),
	name name_domain,
	email email_domain,
	DOB DOB,
	sex sex_domain,
	phone_number phone_number_domain,
	FOREIGN KEY (id) REFERENCES person
)

CREATE TABLE volunteer (
	ID VARCHAR(10),
	name name_domain,
	email email_domain,
	DOB DOB,
	sex sex_domain,
	events_served smallint,
	password TEXT NOT NULL,
	FOREIGN KEY (id) REFERENCES person	
)