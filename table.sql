--Creating mock Amazon ERD and DDL

--Create Table <name_table>(
    --<columnname> <data type> <constraints>,
--)

--create table commnad for each entity
create table customer(
    customer_id serial primary key,
    first_name varchar(20), --varchar(20) is a string of 0 to 20
    last_name varchar(50) not null, -- by default any colukn can contain a null
    --not null means that a coloumn cannot have a null)
    address varchar(150),
    billing_info varchar(150)
);