create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	address VARCHAR(150)
);

create table salesperson (
	seller_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	store_id Integer
);

create table car(
	car_id SERIAL primary key,
	color VARCHAR(150),
	make VARCHAR(150),
	model VARCHAR(150),
	total_cost Numeric(10,2)
);


create table invoice (
	invoice_id SERIAL primary key,
	extended_warranty_cost Numeric(10,2) default 12000.00,
	total_cost Numeric(10,2),
	seller_id Integer not null,
	customer_id Integer not null,
	car_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	foreign key(seller_id) references salesperson(seller_id),
	foreign key(car_id) references car(car_id)
);


create table parts(
	part_id SERIAL primary key,
	wheels Numeric(1) default 4,
	wipers Numeric(1) default 2,
	misc_parts Numeric(1) default 0,
	total_cost_of_parts Numeric(10,2)
);

create table mech(
	mech_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	store_id INTEGER,
	cost_per_hour Numeric(2,2) default 25.00
);

create table service(
	service_id SERIAL primary key,
	cost_of_parts Numeric(10,2),
	cost_of_labor Numeric(10,2),
	total_cost_service Numeric(10,2),
	mech_id Integer,
	part_id Integer,
	car_id INTEGER,
	foreign key(mech_id) references mech(mech_id),
	foreign key(part_id) references parts(part_id),
	foreign key(car_id) references car(car_id)
);



create table records(
	record_id SERIAL primary key,
	car_id INTEGER,
	service_id Integer,
	mech_id Integer, 
	part_id Integer,
	invoice_id Integer,
	seller_id Integer,
	customer_id Integer,
	foreign key(car_id) references car(car_id),
	foreign key(service_id) references service(service_id),
	foreign key(mech_id) references mech(mech_id),
	foreign key(part_id) references parts(part_id),
	foreign key(invoice_id) references invoice(invoice_id),
	foreign key(seller_id) references salesperson(seller_id),
	foreign key(customer_id) references customer(customer_id)
);