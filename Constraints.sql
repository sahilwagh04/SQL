show databases;
use mysql;
create table Departments(Dept_ID int, Dept_Name varchar(25), Student_name varchar(25), Joining_Date date);
select * from Departments;
desc Departments;
insert into Departments values(1, "Electrical", "Sahil", "2023-04-08");
insert into Departments values(2, "Electrical","Chetna","2023-06-08");
insert into Departments values(3, "Mechanical", "Sayli", "2023-09-06");
insert into Departments values(4, "Computer", "Trupti", "2023-08-08");
insert into Departments values(7, "Electrical","Priyanka",null);

alter table Departments
add column city char(25) not null;

alter table Departments
modify column city varchar(25) not null;  /* not null constraint*/

insert into Departments values(6, "Electrical","Gauri",null,"Nagpur");
insert into Departments values(5, "Computer", "Sejal", null, null);

alter table Departments
modify column Dept_ID int unique;   /* unique constraint */

insert into Departments values(1,"Electrical","Sakshi",null);



drop table if exists person;
create table person(ID int, Lastname varchar(25) not null, firstname varchar(25) unique);
select * from person;

alter table person
add column age int check (age>=18);   /* check constraint */

insert into person values(1, "jadhav","sakshi",23);
insert into person values(3, "Wankhade","pritesh",25);
insert into person values(3, "Wankhade", "pritesh",7);

alter table person
modify column ID int primary key;

insert into person values(4,null,"sakshi",23);



drop table if exists person;
/*create table person(ID int auto_increment primary key, Lastname varchar(25) not null,firstname varchar(25) unique, age int, city varchar(25),
constraint check_person check (age>=20 and city="pune"));*/
select * from person;
create table person(ID int auto_increment primary key, lastname varchar(25) not null, firstname varchar(25) unique, city varchar(25) 
default "pune");  /* default constraint */
insert into person values(2, "wagh", "sahil","rar");
insert into person values(3,"gaurkar","Trupti","mumbai");
insert into person values(9,"Priyanka","Mahajan",null);
insert into person values(10,"Sayli","dhakate","Pune");
insert into person(ID,lastname,firstname) values(11,"ssa","cs");
select * from person;

use mysql;
show tables;
select * from employee;
drop table employee;
create table employee(emp_name varchar(20), salary int, mobile_no varchar(20));
insert into employee values("Sahil",30000,"7083806333");
 
 alter table employee
 modify column salary int default 10000;
 insert into employee values("Trupti",null,"7458964257");
 insert into employee values("Sayli",null,"8975674321");
 select * from employee;
 
 alter table employee
 add column SALARY_ int default 10000;
 insert into employee values("Sakshi",null,"8975456785",null);
 insert into employee(emp_name,salary,mobile_no,SALARY_) values("sejal",56000,"8432567543",null);
select * from employee;

/* index constraint is used to retrive data from database fasteer than any other way */

select * from person;
create index index_name
on person (ID, Lastname, firstname, age);
show indexes from person;

create index index1
on person (ID,lastname);
show indexes from person;

select * from departments;
create index ABC
on departments (Dept_ID, Dept_Name);
show indexes from departments;

show tables;
select * from student;

create index a1
on student(name);
show indexes from student;

drop index a1 on student;
select * from student;



/* Autoincrement */
create table person_data(Person_ID int not null auto_increment, lastname varchar(25), primary key (Person_ID));
select * from person_data;

alter table person_data
auto_increment = 100;

insert into person_data values(1, "sahil");
select * from person_data;

/* view */
select * from person_data;
create view ABC as
select Dept_ID, Student_name from departments
where Dept_ID = 3;
drop view ABC;
use sahil;
select * from student;
insert into student values("sahil",98,2);
select * from student;



use sahil;
create table Department(Dept_ID int, Dept_Name varchar(25), student_name varchar(25), Joining_date date);
select * from Department;

desc Department;
insert into Department values(1,"computer","Gauri","2023-02-04");
insert into Department values(2,"Electronic","Nikita","2023-03-05");
insert into Department values(3,"Mechanical","Swati","2023-07-08");
insert into Department values(4,"Electrical","Mahi","2023-05-01");
insert into Department values(6,"Computer","Priyanka",null);

alter table Department
add column city char(25) not null;

alter table Department
modify column city varchar(25) not null;
insert into Department values(1, "computer", "Chetna",null,"Pune");
insert into Department values(8,"Electronic","nikita",null,null);
select * from Department;



alter table Department
modify column city varchar(25) not null;    /*not null constraints*/

alter table department
modify column Dept_ID int unique;     /*unique constraints*/

insert into Department values(1,"Electrical","Sarthak",null);
insert into Department values(8,"Electrical","Gauri",null,"Pune");
select * from Department;

drop table if exists person;
create table person(id int, lastname varchar(23) not null, firstname varchar(24) unique);
select * from person;
insert into person values(1,'wagh','sahil');
select * from person;

alter table person
add column salary int check (salary >= 10000);      /*check constraints */

insert into person values(2,"chaudhari","Gauri",12000);
insert into person values(3,"Dhakate","Priyanka",30000);
insert into person values(4,"Gaurkar","Trupti",70000);

alter table person
modify column ID int primary key;


use sahil;
drop table employee;
create table emp_data(emp_id int primary key, name char(25), age int);
insert into emp_data values(101,"chetna",26),(102,"trupti",24),(103,"sayli",23),(104,"priyanka",22),(105,"sahil",24);
select * from emp_data;

drop table department;
create table department(dep_id int primary key, dep_name char(20), emp_id int,
foreign key(emp_id) references emp_data(emp_id) );

insert into department values(1,'civil',102);
insert into department values(2,'IT',104);
insert into department values(3,'mechanical',103);
insert into department values(4,'computer',105);
select * from department;

select name, age, emp_id from emp_data where emp_id=101;

select department.dep_name, emp_data.name 
from emp_data inner join department
on department.emp_id = emp_data.emp_id;

drop table department;
drop table emp_data;
/* cascade */
create table emp_data(emp_id int primary key, name char(25), age int);
create table department(dep_id int primary key, dep_name char(20), emp_id int,
foreign key(emp_id) references emp_data(emp_id)
on delete cascade
on update cascade);
delete from emp_data where emp_id = 102;
select * from emp_data;
select * from department;



update emp_data
set emp_id = 110 where emp_id = 105;

insert into emp_data values(101,"chetna",26),(102,"trupti",24),(103,"sayli",23),(104,"priyanka",22),(105,"sahil",24);
select * from emp_data;

insert into department values(1,'civil',102),(2,"IT",104);
insert into department values(3,"mechanical",103);
insert into department values(4,"computer",105);
select * from department;



