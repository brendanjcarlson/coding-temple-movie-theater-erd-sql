CREATE TABLE employee (
	id serial PRIMARY KEY,
	"name" varchar(255) NOT NULL
);

CREATE TABLE product (
	id serial PRIMARY KEY,
	"name" varchar(255) NOT NULL,
	description varchar(1000) NOT NULL,
	price float NOT NULL
);

CREATE TABLE "location" (
	id serial PRIMARY KEY,
	"name" varchar(255) NOT NULL,
	address varchar(255) NOT NULL
);

CREATE TABLE customer (
	id serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	email varchar(255),
	phone_number varchar(255),
	date_of_birth date NOT NULL
);

CREATE TABLE movie (
	id serial PRIMARY KEY,
	title varchar(255) NOT NULL,
	description varchar(1000) NOT NULL,
	director varchar(255) NOT NULL,
	"cast" varchar(1000) NOT NULL,
	genre varchar(255) NOT NULL,
	rating varchar(10) NOT NULL,
	run_time integer NOT NULL,
	release_date date NOT NULL
);

CREATE TABLE room (
	id serial PRIMARY KEY,
	location_id integer REFERENCES "location"(id),
	"name" varchar(50) NOT NULL,
	num_seats integer NOT NULL
);

CREATE TABLE seat (
	id serial PRIMARY KEY,
	room_id integer REFERENCES room(id),
	"row" integer NOT NULL,
	"number" integer NOT null
);

CREATE TABLE screening (
	id serial PRIMARY KEY,
	movie_id integer REFERENCES movie(id),
	room_id integer REFERENCES room(id),
	show_time time NOT null
);

CREATE TABLE ticket (
	id serial PRIMARY KEY,
	screening_id integer REFERENCES screening(id),
	seat_id integer REFERENCES ticket(id),
	price float NOT NULL
);

CREATE TABLE reservation (
	id serial PRIMARY KEY,
	customer_id integer REFERENCES customer(id),
	ticket_id integer REFERENCES ticket(id)
);

CREATE TABLE "order" (
	id serial PRIMARY KEY,
	customer_id integer REFERENCES customer(id),
	employee_id integer REFERENCES employee(id),
	total_amount float NOT NULL
);

CREATE TABLE order_item (
	id serial PRIMARY KEY,
	order_id integer REFERENCES "order"(id),
	product_id integer REFERENCES product(id),
	quantity integer NOT null
);