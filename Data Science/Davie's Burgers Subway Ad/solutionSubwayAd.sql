-- Start by getting a feel for the orders table:
SELECT * FROM orders
LIMIT 10;

-- How recent is this data?

SELECT DISTINCT order_date AS 'RECENT DATA' 
FROM orders;

/* The special_instructions column stores the data where Davie’s Burgers customers leave a note for the kitchen or the delivery. Instead of selecting all the columns using *, write a query that selects only the special_instructions column. Limit the result to 20 rows. */

SELECT special_instructions FROM orders
LIMIT 20;

/* There seem to be a lot of empty values in that column. That is because customers sometimes leave the notes section blank. Can you edit the query so that we are only returning the special instructions that are not empty? */

SELECT special_instructions FROM orders
WHERE special_instructions IS NOT NULL
LIMIT 20;

/* Let’s go even further and sort the instructions in alphabetical 
order (A-Z). */

SELECT special_instructions FROM orders
WHERE special_instructions IS NOT NULL
ORDER BY special_instructions ASC
LIMIT 20;

/* Awesome! Now we have a good idea of the list. Let’s search for special instructions that have the word ‘sauce’. Are there any funny or interesting ones? */

SELECT special_instructions AS 'THERE IS SAUCE?' FROM orders
WHERE special_instructions like '%sauce%';

/*Let’s search for special instructions that have the word ‘door’.
Any funny or interesting ones? */

SELECT special_instructions AS 'THERE IS SOME DOOR?' FROM orders
WHERE special_instructions like '%door%';

/* 
Let’s search for special instructions that have the word ‘box’. Any funny or interesting ones? */ 

SELECT special_instructions AS 'THERE IS SOME BOX?' FROM orders
WHERE special_instructions like '%box%';

/* Wow, some of these are marketing gold! But what are their order numbers? Instead of just returning the special instructions, also return their order ids. For more readability:

Rename id as ‘#’
Rename special_instructions as ‘Notes’ */ 

SELECT id AS '#', special_instructions AS 'Notes' FROM orders;


