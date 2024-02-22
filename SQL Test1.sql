/*1  . Write the SQL query to get the maximum salary of an employee from a table named employees.*/
use sahil;
drop table employ;
create table employ(employee_name varchar(10), salary int);
insert into employ values('A', 24000),('C', 34000),('D', 55000),('E', 75000),('F', 21000),('G', 40000),('H', 50000);
select * from employ;
select max(salary) from employ;


/*2 What is a Primary Key? Give one example.
ans:- A Primary Key is used to apply command on the column for not having null values and Unique values.*/
create table a1(name char(25) primary key, id int);
insert into a1 values('Sahil', 1),('sahil',2);

/*3 How will you change the data type of column
and:- By using modify function we can change the data type of column

alter table employ
modify column salary varchar(25);   By using this syntax we can modify column*/

/*4 Table: products Columns: product_id, product_name, price
Problem: Find all products with a price greater than $50.*/
create table products(product_id int, product_name varchar(25), price int);
insert into products values(1, 'bike', 60),(2, 'cycle', 18),(3, 'car', 100);
select price from products where price > 50;


/*5 Table: employees Columns: employee_id, name, salary
Problem: List employees in descending order of salary.*/

create table employees(employee_id int, salary int);
insert into employees values(1, 10000),(2, 20000),(3, 40000),(4, 60000);
select * from employees
order by salary DESC;


/*6  Table: students
Columns: student_id, name, age
Problem: Insert a new student with the name "Alice" and age 22.*/

create table students(student_id int, name char(20), age int);
insert into students values(1, 'sahil', 24),(2, 'Gauri', 24),(3, 'sayli', 5);
select * from students;
insert into students values(4, 'Alice', 22);
select * from students;


/*7 Write an SQL query to find the names of employees starting with “A”.*/
select * from students
where name like 'A%';




/*8 What are the types of Joins
ans:- Types of joints are INNER JOIN, LEFT JOIN, RIGHT JOIN, CROSS JOIN, SELF JOIN*/


/*9 Tables: employees, departments
Columns: employee_id, name, salary, department_id, department_name
Problem: Retrieve the names of employees who earn more than the average salary 
in their respective departments.*/

drop table employees;
CREATE table employees(employee_id int, name char(20),salary int);
CREATE table departments(department_id int, department_name char(20));

insert into employees values(1, 'sahil', 80000),(2,'Trupti', 60000),(3,'priyanka',50000),(4,'Gauri',40000),(5,'Sayli', 30000);
insert into departments values(1, 'Mech'),(2, 'MCA'),(3, 'MCA'),(4, 'CS'),(5, 'CS');

select * from employees;
select * from departments;

select AVG(salary) from employees;

select employees.salary, departments.department_name 
from employees CROSS JOIN departments 
where employees.employee_id = departments.department_id 
having employees.salary > 52000;



/* 10 Table: orders
Columns: order_id, order_date, total_amount
Problem: Find the total order amount for each month of the year.*/

drop table orders;
create table orders(order_id int, order_date date, total_amount int);
insert into orders values(1, '2020-01-23', 10000),(3, '2020-01-08', 12000),(5, '2020-01-23', 14000),(7, '2020-02-11', 15000), (6, '2020-5-12', 11000);
select month(order_date),sum(total_amount) from orders
group by month(order_date) ;



/*11 Table: customers
Columns: customer_id, customer_name, email
Problem: Insert a new customer with a unique customer ID and email address*/

create table customers(customer_id int, customer_name varchar(25), email varchar(40));
insert into customers values(1, 'sahil', 'sahilwagh98@gmail.com');
insert into customers values(2, 'sayli', 'saylimahajan98@gmail.com'),(3, 'sakshi', 'sakshisaini@76yahoo.com');
select * from customers;
insert into customers values(4, 'trupti', 'truptigaurkar@yahoo.com');
select * from customers;
