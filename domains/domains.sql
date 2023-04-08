CREATE DOMAIN email_domain char(30)
	CONSTRAINT email_test 
	CHECK( LENGTH(VALUE) > 0 );

CREATE DOMAIN phone_number_domain char(10)
	CONSTRAINT password_check
	CHECK (LENGTH(VALUE) = 10);

CREATE DOMAIN sex_domain char(10)
	CONSTRAINT sex_check
	CHECK (VALUE IN ('male', 'female', 'other'));

CREATE DOMAIN status_domain char(10)
	CONSTRAINT status_check
	CHECK (VALUE IN ('CREATED', 'IN-PROGRESS', 'DROPPED', 'REJECTED'));

CREATE DOMAIN unit_domain char(10)
	CONSTRAINT unit_check
	CHECK (VALUE IN ('pounds', 'litres', 'tons'));

CREATE DOMAIN name_domain char(30)
	CONSTRAINT name_check
	CHECK (LENGTH(VALUE) > 0);

CREATE DOMAIN location_domain char(30)
	CONSTRAINT location_check
	CHECK (LENGTH(VALUE) > 0);

CREATE DOMAIN people_domain int
	CONSTRAINT people_check
	CHECK (VALUE > 0);

CREATE DOMAIN address_domain char(50)
	CONSTRAINT address_check
	CHECK (LENGTH(VALUE) > 0);
	
CREATE DOMAIN org_name_domain char(15)
	CONSTRAINT org_check
	CHECK (LENGTH(VALUE) > 0);

CREATE DOMAIN DOB DATE
	CONSTRAINT dob_check
	CHECK (VALUE NOTNULL);

CREATE DOMAIN quantity_domain numeric(10,2)
	CONSTRAINT quantity_check
	CHECK (VALUE > 0);

CREATE DOMAIN events_served_domain SMALLINT
	CONSTRAINT events_served_check
	CHECK (VALUE > -1);