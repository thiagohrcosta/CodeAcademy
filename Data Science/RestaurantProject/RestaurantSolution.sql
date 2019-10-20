/* 1. What are the column names? */

SELECT * FROM nomnom;

/* ===========================================================================================*/

/* 2. What are the distinct neighborhoods? */

SELECT DISTINCT neighborhood FROM nomnom;

/* ===========================================================================================*/

/* 3. What are the distinct cuisine types? */

SELECT DISTINCT cuisine FROM nomnom;

/* ===========================================================================================*/

/* 4. Suppose we would like some Chinese takeout. What are our options? */

SELECT * FROM nomnom
WHERE cuisine = 'Chinese';

/* ===========================================================================================*/

/* 5. Return all the restaurants with reviews of 4 and above. */

SELECT * FROM nomnom
WHERE review >= 4;

/* ===========================================================================================*/

/* 6. Suppose Abbi and Ilana want to have a fancy dinner date. Return all the restaurants that are Italian and $$$.

SELECT * FROM nomnom
WHERE cuisine = 'Italian' 
AND price = '$$$';

/* ===========================================================================================*/

/* 7. Your coworker Trey can’t remember the exact name of a restaurant he went to but he knows it contains the word 
‘meatball’ in it. Can you find it for him using a query? */

SELECT * FROM nomnom
WHERE name like '%meatball%';

/* ===========================================================================================*/

