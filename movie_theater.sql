CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	ticket_id INTEGER,
	FOREIGN KEY(ticket_id) REFERENCES customers_tickets(ticket_id),
	first_name VARCHAR(100),
	last_name VARCHAR(100)
)

CREATE TABLE customers_tickets(
	id SERIAL PRIMARY KEY,
	ticket_id INTEGER,
	FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id),
	customer_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
)

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	movie_id INTEGER,
	movie_name VARCHAR(100),
	hours TIME
)

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(100),
	movie_casts VARCHAR(100),
	description VARCHAR(250),
	hours TIME
)

CREATE TABLE concessions(
	concession_id SERIAL PRIMARY KEY,
	items_name VARCHAR(100)
)