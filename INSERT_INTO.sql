insert into car (
	car_id,
	color,
	make,
	model,
	total_cost
) values (
	12345,
	'Fresh Powder',
	'Nissan',
	'Sentra',
	14000
);

insert into car (
	car_id,
	color,
	make,
	model,
	total_cost
) values (
	23456,
	'Ocean Blue',
	'Ford',
	'Focus',
	2500
);

insert into customer (
	customer_id,
	first_name,
	last_name,
	address
) values (
	1,
	'Feffer',
	'Lulu',
	'123 Main Street, BG, Washinton, 98604'
);

insert into customer (
	customer_id,
	first_name,
	last_name,
	address
) values (
	2,
	'Dwabbit',
	'Hobbit',
	'445 Tigerhill, Hillshire, Hobbiton, 99334'
);

insert into salesperson(
	seller_id,
	first_name,
	last_name,
	store_id
) values (
	101,
	'Harry',
	'Potter',
	122
);

insert into invoice(
	invoice_id,
	extended_warranty_cost,
	total_cost,
	seller_id,
	customer_id,
	car_id
) values (
	1001,
	0,
	14000,
	101,
	1,
	12345
);

insert into mech (
	mech_id,
	first_name,
	last_name,
	store_id,
	cost_per_hour
) values (
	901,
	'Dill',
	'Pickle',
	122,
	00.99
);