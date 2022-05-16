--Car dealership Table

create table Cars(
	Serial_Number serial primary key,
	Service_History varchar(1000),
	Model varchar(50),
	Make varchar(50),
	Color varchar(50),
	Year_ integer
);

create table Car_Dealership(
	Dealership_id serial primary key,
	Dealership_name varchar(150)
);

create table Customer(
	Customer_id serial primary key,
	Serial_number integer,
	foreign key(Serial_number) references Cars(Serial_number),
	First_name varchar(150),
	Last_name varchar(150)

);

create table Salesperson(
	Salesperson_id serial primary key,
	Dealership_id integer,
	foreign key(Dealership_id) references Car_Dealership(Dealership_id),
	First_name varchar(50),
	Last_name varchar(150),
	Total_sales numeric(8,2)
	
);

create table Mechanic(
	Mechanic_id serial primary key,
	Dealership_id integer,
	foreign key(Dealership_id) references Car_Dealership(Dealership_id),
	First_name varchar(150),
	Last_name varchar(150)
	
);

create table Invoice(
	Invoice serial primary key,
	Serial_Number type,
	foreign key(Serial_Number) references Cars(Serial_Number),
	Salesperson_id integer,
	foreign key(Salesperson_id) references Salesperson(Salesperson_id),
	Amount numeric(8,2),
	Date_ date

);

create table Services(
	Service_id serial,
	Service_Ticket varchar(1000),
	Hourly_rate numeric(5,2),
	Serial_Number integer,
	foreign key(Serial_Number) references Cars(Serial_Number),
	Parts_id integer,
	Mechanic_id integer,
	foreign key(Mechanic_id) references Mechanic(Mechanic_id)

);