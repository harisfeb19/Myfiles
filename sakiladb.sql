SELECT * FROM sakila.actor;
use sakila;
select first_name, last_name, address, city.city, country.country from actor
inner join address on actor_id = address_id
inner join city on address.city_id = city.city_id 
inner join country on city.country_id = country.country_id
where 	country = "Turkey";


select first_name, last_name, amount, payment_date, rental_date from customer 
inner join payment on customer.customer_id = payment.customer_id
inner join rental on  customer.customer_id = rental.customer_id ;