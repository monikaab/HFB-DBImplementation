-- For encryption
CREATE EXTENSION pgcrypto;

-- person table parent to 
-- employee, donor, volunteer.
CREATE TABLE person (
  ID VARCHAR(10),
  name name_domain,
  Email email_domain,
  DOB DOB,
  sex sex_domain,
  PRIMARY KEY (ID)
);

-- table for saving phone number of persons
CREATE TABLE person_phone_number (
	ID VARCHAR(10),
	phone_number phone_number_domain,
	FOREIGN KEY (ID) REFERENCES person
);

-- table for saving employee details
CREATE TABLE employee (
	ID VARCHAR(10),
	name name_domain,
	email email_domain,
	DOB DOB,
	sex sex_domain,
	username varchar(20),
	password TEXT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (id) REFERENCES person
);

-- Table for saving donor details
CREATE TABLE donor (
	ID VARCHAR(10),
	name name_domain,
	email email_domain,
	DOB DOB,
	sex sex_domain,
	no_donations serve_domain,
	PRIMARY KEY (id),
	FOREIGN KEY (id) REFERENCES person
);

-- Table for saving volunteer details
CREATE TABLE volunteer (
	ID VARCHAR(10),
	name name_domain,
	email email_domain,
	DOB DOB,
	sex sex_domain,
	events_served serve_domain,
	password TEXT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (id) REFERENCES person	
);

-- Table for saving list of food items
CREATE TABLE food_item (
	item_id VARCHAR(10),
	name name_domain,
	ID VARCHAR(10),
	unit VARCHAR(10),
	PRIMARY KEY (item_id),
	FOREIGN KEY (ID) REFERENCES person
);

-- Table for community at which event is served
CREATE TABLE community (
	id VARCHAR(10),
	areaName location_domain,
	address address_domain,
	PRIMARY KEY (id)
);

CREATE TABLE partner_agency (
	partner_id VARCHAR(10),
	address address_domain,
	org_name org_name_domain,
	people_count people_domain,
	email email_domain,
	type VARCHAR(10),
	phone_number phone_number_domain,
	password TEXT NOT NULL,
	username VARCHAR(20),
	PRIMARY KEY (partner_id)
);

-- event table
CREATE TABLE event (
	event_id VARCHAR(10),
	no_of_persons_served people_domain,
	time TIME,
	date DATE,
	ID VARCHAR(10),
	partner_id VARCHAR(10),
	loc_id VARCHAR(10),
	location VARCHAR(20),
	PRIMARY KEY (event_id),
	FOREIGN KEY (id) REFERENCES person,
	FOREIGN KEY (partner_id) REFERENCES partner_agency,
	FOREIGN KEY (loc_id) REFERENCES community
);

-- relation table to check who created the event
CREATE TABLE creates (
	id VARCHAR(10),
	event_id VARCHAR(10),
	FOREIGN KEY (id) REFERENCES person,
	FOREIGN KEY (event_id) REFERENCES event
);

-- Table for checking households served at the event
CREATE TABLE household (
	ssn VARCHAR(15),
	name VARCHAR(30),
	event_id VARCHAR(10),
	PRIMARY KEY (ssn),
	FOREIGN KEY (event_id) REFERENCES event
);
