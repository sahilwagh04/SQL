use project1;
/*1. count() function counts the number of rows in a result set.*/
select * from employees;
select count(EmployeeID) FROM employees;

/*2. Sum() function calculates the sum of values in a numeric column.*/
select * from products;
select sum(price) from products;

/*3.AVG:
AVG() function calculates the sum of values in a numeric column.*/
select avg(Price) from products;

/*4.Min() function retrieves the minimum value from a column.*/
select min(Price) from products;

/*5. MAX:*/
select MAX(Price) from products;


/*The groupby functions 
1.The following SQL statement lists the number of customers in each country:*/
select count(customerID),
Country from customers
group by Country;


select count(customerID),
Country from customers
group by Country
order by count(CustomerID) DESC;


/*HAVING (used with GROUP BY):

HAVING is used with the GROUP BY clause to filter the results of a grouped query based on a condition.
Example:*/
select ProductName, avg(Price) as Avg_Price
from products
group by ProductName
Having avg(Price) > 50;

select * from products;

/*1.The following SQL statement lists the number of customers in each country. 
Only include countries with more than 5 customers:*/

select count(CustomerID),
Country from Customers
group by Country
Having count(CustomerID) > 5;

/*2.The following SQL statement lists the number of customers in each country,
 sorted high to low (Only include countries with more than 5 customers):*/
 select count(CustomerID),
 Country from Customers
 group by Country
 Having count(CustomerID) > 5
 order by count(CustomerID) DESC;
 
 /*joins.3.The following SQL statement lists the employees that have registered more than 10 orders:*/
 select employees.LastName, count(orders.OrderID) as numberoforder
 from (Employees INNER JOIN Orders on Orders.EmployeeID = Employees.EmployeeID)
 group by LastName
 Having count(Orders.OrderID) > 10;
 
 
 
 