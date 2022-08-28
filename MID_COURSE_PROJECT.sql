USE mavenmovies;
-- Single Table Analysis
-- Mid Course Project

/* Project Statement - The Company's insurance policy is up for renewal and insurance company's underwriters need some updated 
information from us before they issue a new policy */

/*List all staff members, including their first name and last name, email address, and their store identification number wher they work */
SELECT first_name, last_name, email, store_id
FROM staff;

/*Count Inventory items seperately from both stores*/
SELECT store_id, COUNT(inventory_id) AS Inventory_Number
FROM inventory
GROUP BY store_id;

/*Count of active customers for each stores*/
Select store_id,
COUNT(CASE WHEN active = 1 THEN customer_id ELSE NULL END) AS active_customers
FROM customer
GROUP BY store_id;

/* Count the customer email addresses stored in data base*/
SELECT COUNT(email) AS Customer_email
FROM customer;

/*Count distinct film titles in the inventory of each store then provide count of unnique categories of films*/
SELECT store_id,
COUNT(DISTINCT film_id) AS unique_titles
FROM inventory
GROUP BY store_id;
SELECT COUNT(DISTINCT name) AS Unique_categories
FROM category;

/*Provide replacement cost of film that is least expensive to replace, most expensive to replace and average replacment cost*/
SELECT MAX(replacement_cost) AS Most_expensive_to_replace, MIN(replacement_cost) AS Least_expensive_to_replace, 
AVG(replacement_cost) AS Average_replacement_cost
FROM film;

/* Please provide average payment you process and maximun payment you have processed*/
SELECT MAX(amount) AS Maximum_payment_processed,
AVG(amount) AS Average_payment_processed
FROM payment;

/*Please provide a list of all customers identification values with a acount of rentals 
they have made all time with the highest volume customers on top*/
SELECT customer_id, COUNT(rental_id) AS Number_of_rentals
FROM rental
GROUP BY customer_id;


