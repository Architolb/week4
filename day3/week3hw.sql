--1. How many actors are there with the last name ‘Wahlberg’?
select COUNT(last_name) 
from actor where last_name like 'Wahlberg';
--2

--2. How many payments were made between $3.99 and $5.99?
select count(amount)
from payment 
where amount > 3.99 and amount < 5.99;
--3,412

--3. What film does the store have the most of? (search in inventory)
select film_id, COUNT(film_id) AS MOST_FREQUENT
from inventory
GROUP BY film_id
ORDER BY COUNT(film_id) desc
--after finding the title associated with the film_id the store has the most of, return the title
select title
from film
where film_id = 200

--4. How many customers have the last name ‘William’?
select COUNT(last_name) 
from customers where last_name like 'William';
--0



--5. What store employee (get the id) sold the most rentals?
select staff_id, COUNT(staff_id) AS MOST_FREQUENT
from rental
GROUP BY staff_id
ORDER BY COUNT(staff_id) desc

select first_name, last_name
from staff
where staff_id = 1
--Mike, Hillyer


--How many different district names are there?
select last_name count(last_name) 
from customer 
group by store_id = 1
order by count (last_name)
where last_name like '%es%';
--


--What film has the most actors in it? (use film_actor table and get film_id)
select film_id, COUNT(film_id) AS MOST_FREQUENT
from film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) desc
--Film id 508



--From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select last_name count(last_name) 
from customer 
group by store_id = 1
order by count (last_name)
where last_name like '%es%';
--?




--Within the film table, how many rating categories are there? And what rating has the most movies total?
select count(distinct rating) as ratings
from film
--5
select rating, COUNT(rating) AS MOST_FREQUENT
from film
GROUP BY rating
ORDER BY COUNT(rating) desc
--PG-13
