-- 1. Query to find number of actors with last_name 'Wahlberg'
select last_name 
from actor 
where last_name = 'Wahlberg';

-- 2. Query to count how many payments were made between 3.99 & 5.99
select count(amount)
from payment 
where amount between 3.99 and 5.99;

-- 3. Query to find film store has highest count of
select COUNT(inventory_id),film_id
from inventory
group by film_id
order by count(inventory_id) desc;

-- 4. Query to find how many customers have last name 'William'
select last_name
from customer
where last_name = 'William';

-- 5. Query what store employee sold the most rentals
select count(rental_id), staff_id
from rental 
group by staff_id 
order by count(rental_id) desc;

-- 6. Query how many different disctrict names are there?
select count(city_id), district
from address 
group by district
order by count(city_id; 

-- 7. Query what film has the most actors in it
-- use film_actor table & get film_id
select count(actor_id), film_id
from film_actor
group by film_id
order by count(actor_id) desc;

-- 8. Query from store_id1, how many customers have last name ending with 'es'?
-- use customer table
select last_name
from customer
where last_name like '%es';

-- 9. Query how many payment amounts had a number of rentals above 250
-- for customers with ids between 380 & 430
-- use group by & having > 250
-- *** What list are we supposed to use? I did not find anything that had a number of rentals***
select count(customer_id), amount
from payment 
where customer_id between 380 and 430
group by amount 
having count(customer_id) > 250;

-- 10. Within the film table, how many rating categories are there? 
-- What rating has the most movies total?
select count(title), rating
from film 
group by rating 
order by count(title) desc;

