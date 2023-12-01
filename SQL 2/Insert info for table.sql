insert into CUSTOMER_NEW(
	customer_id,
	first_name,
	last_name, 
	address,
	billing_info
)VALUES(
	001,
	'Steve',
	'Jones',
	'123 Oaktree Ln',
	'5454-6523-1523-8965 132 07/24'
);

-- Insert ticket information
insert into tickets_new(
	theater_id,
	amount,
	movie_name,
	ticket_id
)VALUES(
	321,
	12.00,
	'Dodgeball',
	458652
);

-- Insert inventory for ticket
insert into inventory_new(
	ticket_id,
	ticket_amount
)VALUES(
	458652,
	55
);

-- Insert info for order
insert into order_tickets(
	order_id,
	subtotal,
	total_cost,
	ticket_id
)VALUES(
	021,
	11.32,
	12.00,
	458652
);

-- Insert info for cart
insert into cart_tickets(
	cart_id,
	customer_id,
	order_id
)VALUES(
	33-4233,
	001,
	458652
);