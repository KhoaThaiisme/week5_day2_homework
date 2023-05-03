CREATE TABLE "Customers"(
    "customers_id" SERIAL NOT NULL,
    "ticket_id" INTEGER NOT NULL,
    "first_name" VARCHAR(100) NOT NULL,
    "last_name" VARCHAR(100) NOT NULL
);
ALTER TABLE
    "Customers" ADD PRIMARY KEY("customers_id");
CREATE TABLE "Tickets"(
    "tickets_id" SERIAL NOT NULL,
    "movies_id" INTEGER NOT NULL,
    "movie_name" VARCHAR(100) NOT NULL,
    "time" TIME(0) WITHOUT TIME ZONE NOT NULL
);
ALTER TABLE
    "Tickets" ADD PRIMARY KEY("tickets_id");
CREATE TABLE "Movies"(
    "movie_id" SERIAL NOT NULL,
    "movie_name" VARCHAR(100) NOT NULL,
    "movie_casts" VARCHAR(250) NOT NULL,
    "description" VARCHAR(250) NOT NULL,
    "time" TIME(0) WITHOUT TIME ZONE NOT NULL
);
ALTER TABLE
    "Movies" ADD PRIMARY KEY("movie_id");
CREATE TABLE "Customers_tickets"(
    "id" SERIAL NOT NULL,
    "ticket_id" INTEGER NOT NULL,
    "customer_id" INTEGER NOT NULL
);
ALTER TABLE
    "Customers_tickets" ADD PRIMARY KEY("id");
CREATE TABLE "Concessions"(
    "concessions_id" SERIAL NOT NULL,
    "items" VARCHAR(100) NOT NULL,
    "customer_id" INTEGER NOT NULL
);
ALTER TABLE
    "Concessions" ADD PRIMARY KEY("concessions_id");
ALTER TABLE
    "Customers_tickets" ADD CONSTRAINT "customers_tickets_ticket_id_foreign" FOREIGN KEY("ticket_id") REFERENCES "Tickets"("tickets_id");
ALTER TABLE
    "Customers_tickets" ADD CONSTRAINT "customers_tickets_customer_id_foreign" FOREIGN KEY("customer_id") REFERENCES "Customers"("customers_id");
ALTER TABLE
    "Tickets" ADD CONSTRAINT "tickets_movies_id_foreign" FOREIGN KEY("movies_id") REFERENCES "Movies"("movie_id");
ALTER TABLE
    "Concessions" ADD CONSTRAINT "concessions_concessions_id_foreign" FOREIGN KEY("concessions_id") REFERENCES "Customers"("customers_id");