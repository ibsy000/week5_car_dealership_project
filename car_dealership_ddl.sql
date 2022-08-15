-- you will need to save your DDL statements in a .sql file. (Set up the file where if the client ran every statement 
-- from top to bottom in their database it would create the necessary tables with the correct keys, constraints, etc.)

-- Once all of the tables are created, each table should have at least 2 rows of data. At least 2 of the inserts should 
-- come from a stored procedure (you can always add more if you want).


-- Create ADDRESS table
CREATE TABLE address(
	address_id SERIAL PRIMARY KEY,
	street_address VARCHAR(200),
	city VARCHAR(100),
	state VARCHAR(75),
	zip_code INTEGER
);





-- Create CUSTOMER table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone_number VARCHAR(20),
	email VARCHAR(100),
	address_id INTEGER NOT NULL,
	FOREIGN KEY(address_id) REFERENCES address(address_id)
);





-- Create CUSTOMER_CAR table
CREATE TABLE customer_car(
	customer_car_id SERIAL PRIMARY KEY,
	year NUMERIC(4),
	make VARCHAR(20),
	model VARCHAR(25),
	body_type VARCHAR(10),
	color VARCHAR(10),
	serial_number VARCHAR(17),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);





-- Create SERVICE_HISTORY table
-- I kept overthing this table, the service_ticket table, and the customer_car tables..
CREATE TABLE service_history(
	service_history_id SERIAL PRIMARY KEY
);





-- Create SERVICE_TICKET table
CREATE TABLE service_ticket(
	service_ticket_id SERIAL PRIMARY KEY,
	service_name VARCHAR(50),
	price NUMERIC(6,2),
	service_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	customer_car_id INTEGER NOT NULL,
	FOREIGN KEY(customer_car_id) REFERENCES customer_car(customer_car_id),
	service_history_id INTEGER NOT NULL,
	FOREIGN KEY(service_history_id) REFERENCES service_history(service_history_id)
);





-- Create MECHANIC table
CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone_number VARCHAR(20),
	email VARCHAR(100),
	address_id INTEGER NOT NULL,
	FOREIGN KEY(address_id) REFERENCES address(address_id)
);





-- Create CAR_MECHANIC join table
CREATE TABLE car_mechanic(
	customer_car_id INTEGER NOT NULL,
	FOREIGN KEY(customer_car_id) REFERENCES customer_car(customer_car_id),
	mechanic_id INTEGER NOT NULL,
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
);





-- Create SALESPERSON table
CREATE TABLE salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone_number VARCHAR(20),
	email VARCHAR(100),
	address_id INTEGER NOT NULL,
	FOREIGN KEY(address_id) REFERENCES address(address_id)
);





-- Create CAR_INVENTORY table
CREATE TABLE car_inventory(
	car_inventory_id SERIAL PRIMARY KEY,
	year NUMERIC(4),
	make VARCHAR(20),
	model VARCHAR(25),
	body_type VARCHAR(10),
	color VARCHAR(10),
	new_car BOOLEAN,
	price NUMERIC(8,2),
	serial_number VARCHAR(17),
	customer_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	salesperson_id INTEGER,
	FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id)
);





-- Create INVOICE table
CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	car_inventory_id INTEGER NOT NULL,
	FOREIGN KEY(car_inventory_id) REFERENCES car_inventory(car_inventory_id),
	salesperson_id INTEGER NOT NULL,
	FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);





-- Decided to add columns to the SERVICE_HISTORY table
ALTER TABLE service_history 
ADD COLUMN service_ticket_id INTEGER NOT NULL;

ALTER TABLE service_history
ADD FOREIGN KEY(service_ticket_id) REFERENCES service_ticket(service_ticket_id);

ALTER TABLE service_history
ADD COLUMN customer_car_id INTEGER NOT NULL;

ALTER TABLE service_history
ADD FOREIGN KEY(customer_car_id) REFERENCES customer_car(customer_car_id);





-- Decided to drop column SERVICE_HISTORY_ID from SERVICE_TICKET table
ALTER TABLE service_ticket 
DROP COLUMN service_history_id;













