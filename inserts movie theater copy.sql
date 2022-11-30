INSERT INTO employee("name")
VALUES
 	('Johnathon'),
 	('Alex');
 	
INSERT INTO product("name", description, price)
VALUES
	('Candy bar', 'Yummy candy bar', 0.99),
	('Soda', 'Your favorite cola beverage', .99);
	
INSERT INTO "location"("name", address)
VALUES
	('Big name chain', '123 St'),
	('Mom and pop shop','456 Lane');
	
INSERT INTO movie(title, description, director, "cast",genre,rating,run_time,release_date)
VALUES
	('Dune', 'Scifi movie','Denis Villeneuvveueve','Actors and actresses','scifi','PG-13',180, '2020-01-01'),
	('Titanic', 'Boat sink','I have no idea','Leo','Drama','PG-13',120, '1990-01-01');
	
INSERT INTO customer(first_name, last_name, email, phone_number, date_of_birth)
VALUES
	('Bobby', 'Bobberson','bob@bob.com','1234567890','1990-01-01'),
	('Mikey', 'Mikerson','mike@mike.com','0987654321','1920-01-01');

INSERT INTO room(location_id, "name", num_seats)
VALUES
	(1, 'Hall A', 40),
	(2, 'Hall B', 50);

INSERT INTO seat(room_id, "row", "number")
VALUES
	(1, 3, 4),
	(2, 11, 5);

INSERT INTO screening(movie_id, room_id, show_time)
VALUES
	(1, 2, '20:00:00'),
	(2, 1, '17:00:00');

INSERT INTO ticket(screening_id, seat_id, price)
VALUES
	(1, 2, 6.99),
	(2, 1, 7.99);

INSERT INTO reservation(customer_id, ticket_id)
VALUES
	(2, 1),
	(1, 1);

INSERT INTO "order" (customer_id, employee_id, total_amount)
VALUES
	(2,1, 1.98),
	(1,2, 1.98);

INSERT INTO order_item (order_id, product_id, quantity)
VALUES
	(1, 2, 4),
	(2,1,3);
	