/* 1. What are the column names? */

SELECT * FROM nomnom;

/* The results display the follow columns => name	neighborhood	cuisine	review	price	health  */
/* ===========================================================================================*/

/* 2. What are the distinct neighborhoods? */

SELECT DISTINCT neighborhood FROM nomnom;

/* The results display : Brooklyn; Midtown; Chinatown; Uptown; Queens; Downtown
/* ===========================================================================================*/

/* 3. What are the distinct cuisine types? */

SELECT DISTINCT cuisine FROM nomnom;

/* The results display: Steak; Korean; Chinese; Pizza; Ethiopian; Vegetarian; Italian; Japanese; American; Mediterranean; Indian; 
Soul Food; Mexican  */

/* 4. Suppose we would like some Chinese takeout. What are our options? */

SELECT * FROM nomnom
WHERE cuisine = 'Chinese';

/* There is to many results to insert here */


/* 5. Return all the restaurants with reviews of 4 and above. */

SELECT * FROM nomnom
WHERE review >= 4;

/* There is to many results to insert here */



