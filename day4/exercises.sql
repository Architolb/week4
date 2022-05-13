--1.
select *
from actor 
where last_name = 'Wahlberg';
select count(last_name)
from actor 
where last_name = 'Wahlberg';

select last_name, count(last_name)
from actor
where last_name = 'Wahlberg'
group by last_name;

-- 2.
select count(payment_id) 
from payment
where amount between 3.99 and 5.99
-- 3.
select film_id
from inventory
group by film_id
order by count(film_id) desc;


select *
from film
where film_id = 200;

--4.
select count(last_name)
from customer
where last_name like 'William';

--5.
select staff_id, count(staff_id)
from rental
group by staff_id
order by count(staff_id) desc;

select staff_id, count(staff_id)
from payment
group by staff_id
order by count(staff_id) desc;


--6. 
select district, count(district)
from addresss
group by district;

select count(distinct district)
from address;

--7.
select film_id, count(film_id)
from film_actor
group by film_id
order by count(film_id) desc;
limit 1;

select film_id, count(film_id)
from film_actor
group by actor_id
order by count(*) desc
limit 1;

--8. 
select
from customerwhere store_id = 1 and last_name like '%es';

--9
select amount, count(amount)
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250;


--10
select count(distinct rating)
from film;

select rating, count(film_id)
from film
group by rating
order by count(film_id) desc;

