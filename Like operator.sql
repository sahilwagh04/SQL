
/*The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

There are two wildcards often used in conjunction with the LIKE operator:

 The percent sign % represents zero, one, or multiple characters
 The underscore sign _ represents one, single character
 syntax:
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;*/



/*SQL Wildcard Characters
A wildcard character is used to substitute one or more characters in a string.
Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
Example
Return all customers that starts with the letter 'a':
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

Wildcard Characters
Symbol	Description
%	Represents zero or more characters
_	Represents a single character


/*Using the % Wildcard
The % wildcard represents any number of characters, even zero characters.

Example
Return all customers that ends with the pattern 'es':*/

show databases;
use project1;

 /*use w3schools;*/
SELECT * FROM Customers
WHERE CustomerName LIKE '%es';

/*Return all customers that contains the pattern 'mer':*/

SELECT * FROM Customers
WHERE CustomerName LIKE '%mer%';

/*Using the _ Wildcard
The _ wildcard represents a single character.

It can be any character or number, but each _ represents one, and only one, character.

Example
Return all customers with a City starting with any character, followed by "ondon":*/

SELECT * FROM Customers
/*WHERE City LIKE '_ondon';*/
WHERE City LIKE '_ondon';








 
 /*1.Select all customers that starts with the letter "a":*/

 SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';




/*The _ Wildcard
The _ wildcard represents a single character.

It can be any character or number, but each _ represents one, and only one, character.
Return all customers from a city that starts with 'L' followed by one wildcard character, then 'nd' and then two wildcard characters:
*/
SELECT * FROM Customers
WHERE city LIKE 'N_nt__';

/*The % Wildcard
The % wildcard represents any number of characters, even zero characters.
Return all customers from a city that contains the letter 'L':*/
SELECT * FROM Customers
WHERE city LIKE '%L%';

/*Starts With
To return records that starts with a specific letter or phrase, add the % at the end of the letter or phrase.
You can also combine any number of conditions using AND or OR operators.
Return all customers that starts with 'La':*/
SELECT * FROM Customers
WHERE CustomerName LIKE 'La%';

/*Return all customers that starts with 'a' or starts with 'b':*/


SELECT * FROM Customers 
WHERE CustomerName LIKE 'a%' OR CustomerName LIKE 'b%';

/*Ends With
To return records that ends with a specific letter or phrase, add the % at the beginning of the letter or phrase.
Return all customers that ends with 'e':*/
SELECT * FROM Customers
WHERE CustomerName LIKE '%e';

/*You can also combine "starts with" and "ends with":
Return all customers that starts with "b" and ends with "s":*/

SELECT * FROM Customers
WHERE CustomerName LIKE 'b%s';

/*Contains:To return records that contains a specific letter or phrase, add the % both before and after the letter or phrase.
Return all customers that contains the phrase 'or'*/

SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';


/*Combine Wildcards
Any wildcard, like % and _ , can be used in combination with other wildcards.
Return all customers that starts with "a" and are at least 3 characters in length:*/

SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';

/*Return all customers that have "r" in the second position:*/

SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

/*Without Wildcard
If no wildcard is specified, the phrase has to have an exact match to return a result.
Return all customers from Spain:*/

SELECT * FROM Customers
WHERE Country LIKE 'Spain';

/*Select all records where the value of the City column starts with the letter "a".*/

/*
The SQL IN Operator
The IN operator allows you to specify multiple values in a WHERE clause.

The IN operator is a shorthand for multiple OR conditions.

Example
Return all customers from 'Germany', 'France', or 'UK'*/

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');
/*NOT IN
By using the NOT keyword in front of the IN operator, you return all records that are NOT any of the values in the list.

Example
Return all customers that are NOT from 'Germany', 'France', ot 'UK':*/

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

/*IN (SELECT)
You can also use IN with a subquery in the WHERE clause.

With a subquery you can return all records from the main query that are present in the result of the subquery.

Example
Return all customers that have an order in the Orders table:*/

SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);

/*The SQL BETWEEN Operator
The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

The BETWEEN operator is inclusive: begin and end values are included. 

Example
Selects all products with a price between 10 and 20:*/

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;


/*NOT BETWEEN
To display the products outside the range of the previous example, use NOT BETWEEN:

Example*/
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;
