-- Create customer table
create table customer_new(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- Create ticket info table
create table tickets_new(
	theater_id SERIAL primary key,
	amount numeric(5,2),
	movie_name VARCHAR(200),
	ticket_id integer
);

-- Create inventory table
create table inventory_new(
	ticket_id SERIAL primary key,
	ticket_amount integer
	
);

-- Create order table
create table order_tickets(
	order_id SERIAL primary key,
	order_date DATE default CURRENT_DATE,
	subtotal NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	ticket_id integer
);

-- Create cart table
create table cart_tickets(
	cart_id SERIAL primary key,
	customer_id integer,
	order_id integer
);