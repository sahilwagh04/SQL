/*A subquery is a select query that is enclosed inside another query.
The inner select query is usaully used to determine the results of the outer select query.

syntax:
select dept from employee 
where salary=(select max(salary) from employee)
first the inner query is executed
output of inner query is substituted in outer qury;

write  a sql qury to display emp_name with maximum salary from employee table*/


/*1. with select statement*/
use hr_analytics;
select * from employees;
select first_name, salary from employees
where salary = (select max(salary) from employees);

select max(salary) from employees;



/*Types of subqury
1. with select statement
2. with update statement
3. with delete statement
4. with insert statement

1. select column_name from table 
where column_name opeartor(select column_name from table[where])
ex.select all the employees who have a salary less than avg salary for all the employees.*/

/*2. with update statement*/
UPDATE t1
SET name = 'sejal'
WHERE id IN (SELECT id FROM t2 WHERE name ='trupti');

use sahil;
select * from t1;
select * from t2;


/*3. with delete statement*/
delete from t1 
where id in (select id from t2 where id=3);



use sahil;
select * from t1;
select * from t2;

delete from t2 where id=3;
/*4. with insert statement*/
insert into t1
select * from t2
where name in (select name from t2);

drop table lecture;
create table lecturer(name char(20), age int);
insert into lecturer values("A", 43),("B",52),("C", 51),("D",35),("E",40);
insert into lecturer values("H",43);
select * from lecturer;

drop table student;
create table student(name char(20), age int);
insert into student values("H",43);
select * from student;

select * from student 
where age >= all(select age from lecturer);

select * from student 
where age >= any(select age from lecturer);
