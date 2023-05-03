INSERT INTO customers(
	first_name,
	last_name,
	address,
	payment_info,
	email
)VALUES(
	'Kyle',
	'Thai',
	'123 street, district, city, 12345',
	'6868 6868 6868 6868',
	'kylethaIT@yahoo.com'
),(
	'Vi',
	'Nguyen',
	'456 road, district, city, 56789',
	'8888 8888 8888 8888',
	'Vinguyen123@gmail.com'
)

SELECT *
FROM customers

INSERT INTO movies(
	movie_name,
	movie_casts,
	description,
	hours
)VALUES(
	'Star Wars',
	'Harrison Ford',
	'Wars between species in the galaxy',
	'12:15'
	
)

SELECT *
FROM movies

INSERT INTO tickets(
	movie_name,
	hours
)VALUES(
	'Star Wars',
	'10:30'
)

INSERT INTO customers_tickets(
	ticket_id,
	customer_id
)VALUES(
	1,
	1
)


SELECT *
FROM customers_tickets

INSERT INTO concessions(
	items_name,
	customer_id
)VALUES(
	'Lays chip',
	2
)

SELECT *
FROM concessions