--Theater ERD Tables

create table Customer(
	customer_id serial primary key,
	first_name varchar(40) not null,
	last_name varchar(40) not null
	
);

create table Concessions(
	concessions_id serial primary key,
	name_ varchar(20) not null,
	price numeric(5,2) not null
	
);

create table Managers(
	managers_id serial primary key,
	first_name varchar(40),
	last_name varchar(40),
	department varchar

);

create table Movies(
	movie_id serial primary key,
	movie_name varchar(150) no null
	
);

create table Staff(
	staff_id serial primary key,
	first_name varchar(40) not null,
	last_name varchar(40)not null,
	manager_id integer,
	foreign key(manager_id) references Managers(manager_id)
);

create table Tickets(
	ticket_id serial primary key, 
	time_id time,
	price numeric(5,2),
	movie_id integer,
	foreign key(movie_id) references Movies(movie_id)

);


