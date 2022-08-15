-- you will need to save your DDL statements in a .sql file. (Set up the file where if the client ran every statement 
-- from top to bottom in their database it would create the necessary tables with the correct keys, constraints, etc.)

-- Once all of the tables are created, each table should have at least 2 rows of data. At least 2 of the inserts should 
-- come from a stored procedure (you can always add more if you want).


-- Insert a row of data into ADDRESS table
INSERT INTO address(
	street_address,
	city,
	state,
	zip_code
) 
VALUES (
	'123 Rainbow Rd.',
	'Branson',
	'Missouri',
	65616
);





-- Create PROCEDURE to add more rows to address table
CREATE OR REPLACE PROCEDURE add_address(
	street_address VARCHAR(200),
	city VARCHAR(100),
	state VARCHAR(75),
	zip_code INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO address(
	street_address,
	city,
	state,
	zip_code
) 
VALUES (
	street_address,
	city,
	state,
	zip_code);
END;
$$;





-- Call ADD_ADDRESS procedure to add another address to the ADDRESS TABLE 
CALL add_address('321 Bunny Ave.', 'Ozark', 'Missouri', 65721);

CALL add_address('789 Elephant Ln.', 'Hollister', 'Missouri', 65672);

CALL add_address('9353 Lake Shore Dr.', 'Reeds Spring', 'Missouri', 65737);

CALL add_address('22 Pizza Pie Cir.', 'Kimberling City', 'Missouri', 65686);

CALL add_address('76 Disco Ln.', 'Branson', 'Missouri', 65616);

CALL add_address('911 Fire Ave.', 'Hollister', 'Missouri', 65672);

CALL add_address('5839 Fisherman Dr.', 'Branson West', 'Missouri', 65737);

CALL add_address('444 Boat Dock Rd.', 'Walnut Shade', 'Missouri', 65771);





-- Insert a row of data into CUSTOMER table
INSERT INTO customer(
	first_name,
	last_name,
	phone_number,
	email,
	address_id
)
VALUES (
	'Beverly',
	'Winters',
	'(417)555-4444',
	'iloveknitting@gmail.com',
	1
);





-- Create PROCEDURE to add more rows to customer table
CREATE OR REPLACE PROCEDURE add_customer(
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone_number VARCHAR(20),
	email VARCHAR(100),
	address_id INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO customer(
	first_name,
	last_name,
	phone_number,
	email,
	address_id)
VALUES (
	first_name,
	last_name,
	phone_number,
	email,
	address_id);
END;
$$;





-- Call ADD_CUSTOMER procedure to add another customer to the CUSTOMER TABLE
CALL add_customer('Benjamin', 'Crackerjack', '(417)222-3333', 'ben.crackerjack369@gmail.com', 2);

CALL add_customer('Susan', 'Strawberry', '(417)444-6666', 'haveaberrygoodday@gmail.com', 3);





-- Insert a row of data into SALESPERSON table
INSERT INTO salesperson(
	first_name,
	last_name,
	phone_number,
	email,
	address_id
)
VALUES (
	'Ronald',
	'Swanson',
	'(417)321-4567',
	'sellcarsforever@company.com',
	4
);





-- Create PROCEDURE to add more rows to salesperson table
CREATE OR REPLACE PROCEDURE add_salesperson(
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone_number VARCHAR(20),
	email VARCHAR(100),
	address_id INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO salesperson(
	first_name,
	last_name,
	phone_number,
	email,
	address_id)
VALUES (
	first_name,
	last_name,
	phone_number,
	email,
	address_id);
END;
$$;	





-- Call ADD_SALESPERSON procedure to add another salesperson to the SALESPERSON TABLE
CALL add_salesperson('Henry', 'Haystack', '(417)789-4563', 'makinmoney@company.com', 5);

CALL add_salesperson('Dorothy', 'Lantern', '(417)734-1257', 'lightingupthenight@company.com', 6);





-- Insert a row of data into MECHANIC table
INSERT INTO mechanic(
	first_name,
	last_name,
	phone_number,
	email,
	address_id
)
VALUES (
	'Joe',
	'Waters',
	'(417)334-2751',
	'fixincarsforlyfe@company.com',
	7
);





-- Create PROCEDURE to add more rows to mechanic table
CREATE OR REPLACE PROCEDURE add_mechanic(
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone_number VARCHAR(20),
	email VARCHAR(100),
	address_id INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO mechanic(
	first_name,
	last_name,
	phone_number,
	email,
	address_id)
VALUES (
	first_name,
	last_name,
	phone_number,
	email,
	address_id);
END;
$$;	





-- Call ADD_MECHANIC procedure to add another mechanic to the MECHANIC TABLE
CALL add_mechanic('Janet', 'Cruze', '(417)772-8264', 'letsgoforacruze@company.com', 8);

CALL add_mechanic('Lance', 'Notstong', '(417)228-4512', 'imnotstrong@company.com', 9);





-- Insert a row of data into MECHANIC table


































