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

CALL add_address('6754 Blueberry Cir.', 'Nixa', 'Missouri', 65714);

CALL add_address('57 Shoelace Blvd.', 'Spokane', 'Missouri', 65754);





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

CALL add_customer('Theodore', 'Mcintosh', '(417)669-2458', 'callmeteddy@gmail.com', 10);

CALL add_customer('Mary', 'Burger', '(417)272-4524', 'mmmburgers@gmail.com', 11);





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





-- Insert a row of data into CUSTOMER_CAR table
INSERT INTO customer_car(
	year,
	make,
	model,
	body_type,
	color,
	serial_number,
	customer_id
)
VALUES (
	2020,
	'Tesla',
	'Model 3',
	'Electric',
	'White',
	'5Y2FH12548Z569489',
	1
);





-- Create PROCEDURE to add more rows to customer_car table
CREATE OR REPLACE PROCEDURE add_customer_car(
	year NUMERIC(4),
	make VARCHAR(20),
	model VARCHAR(25),
	body_type VARCHAR(10),
	color VARCHAR(10),
	serial_number VARCHAR(17),
	customer_id INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN 
	INSERT INTO customer_car(
	year,
	make,
	model,
	body_type,
	color,
	serial_number,
	customer_id)
VALUES (
	year,
	make,
	model,
	body_type,
	color,
	serial_number,
	customer_id);
END;
$$;





-- Call ADD_CUSTOMER_CAR procedure to add another customer_car to the CUSTOMER_CAR TABLE
CALL add_customer_car(2019, 'Chevrolet', 'Silverado 1500 Double Cab', 'Pickup', 'Blue', '7G3JD13688K246839', 2);

CALL add_customer_car(2013, 'Volkswagen', 'Beetle', 'Hatchback', 'Red', '2D7FY25948Z277338', 3);





-- Insert a row of data into CAR_INVENTORY table
INSERT INTO car_inventory(
	year,
	make,
	model,
	body_type,
	color,
	new_car,
	price,
	serial_number
)
VALUES (
	2022,
	'Toyota',
	'RAV4',
	'SUV',
	'Black',
	TRUE,
	30864.00,
	'7Z4BY26449H893562'
);





-- Create PROCEDURE to add more rows to car_inventory table
CREATE OR REPLACE PROCEDURE add_car_inventory(
	year NUMERIC(4),
	make VARCHAR(20),
	model VARCHAR(25),
	body_type VARCHAR(10),
	color VARCHAR(10),
	new_car BOOLEAN,
	price NUMERIC(8,2),
	serial_number VARCHAR(17))
LANGUAGE plpgsql
AS $$
BEGIN 
	INSERT INTO car_inventory(
	year,
	make,
	model,
	body_type,
	color,
	new_car,
	price,
	serial_number)
VALUES (
	year,
	make,
	model,
	body_type,
	color,
	new_car,
	price,
	serial_number);
END;
$$;





-- Call ADD_CAR_INVENTORY procedure to add another car to the CAR_INVENTORY TABLE
CALL add_car_inventory(2022, 'Ford', 'Edge', 'SUV', 'Gray', TRUE, 37327.00, '3F3HD56438Z256389');

CALL add_car_inventory(2018, 'Dodge', 'Ram', 'Pickup', 'White', FALSE, 24999.00, '5H2DS83738F356361');

CALL add_car_inventory(2016, 'Mercedez-Benz', 'CLS 400', 'Sedan', 'Silver', FALSE, 36999.00, '8G9FZ35238J234319');

CALL add_car_inventory(2018, 'Dodge', 'Journey', 'Van', 'White', FALSE, 11998.00, '4Z6FG83733F233462');

CALL add_car_inventory(2022, 'Toyota', 'Prius', 'Hatchback', 'Black', TRUE, 32474.00, '1G6FZ83662G263780');

CALL add_car_inventory(2023, 'Kia', 'Forte', 'Sedan', 'Silver', TRUE, 27255.00, '7H4DL43380F136791');

CALL add_car_inventory(2017, 'GMC', 'Sierra 1500', 'Pickup', 'Red', FALSE, 22988.00, '2K3SH63900Z218526');





-- Now let's say a couple of cars get sold
UPDATE car_inventory 
SET customer_id = 4, salesperson_id = 2
WHERE car_inventory_id = 3;


UPDATE car_inventory 
SET customer_id = 5, salesperson_id = 3
WHERE car_inventory_id = 6;





-- Now let's create a couple of invoices for the sold cars
INSERT INTO invoice(car_inventory_id, salesperson_id, customer_id)
VALUES (3, 2, 4), (6, 3, 5);





-- Now let's get some mechanics working on customer cars
INSERT INTO car_mechanic(customer_car_id, mechanic_id)
VALUES (1,3), (1,2), (2,1), (3,2), (3,1), (3,3);





-- Insert a row of data into SERVICE_TICKET table

















