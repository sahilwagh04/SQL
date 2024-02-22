show databases;
use sahil;
create table school(name varchar(25), id int, subject char(25));
insert into school values('sahil',1,'maths');
insert into school values('sayli',2,'sanskrit');
select * from school;

start transaction;
insert into school value("priyanka",3,"science");
select * from school;

rollback;
select * from school;

start transaction;
commit;
update school set name='trupti' where subject='sanskrit';
insert into school values('sakshi',4,'history');
select * from school;

rollback;
select * from school;

start transaction;
savepoint s1;
insert into school values('meenal',5,'cs');

rollback to s1;
select * from school;

start transaction;
savepoint s2;
update school set name = 'pragya' where subject = 'sanskrit';

rollback to s2;
select * from school;

start transaction;

insert into school values('mahima',6,'geography');
savepoint s3;

start transaction;
savepoint s4;
update school set name='vedika' where subject = 'sanskrit';

start transaction;
savepoint s5;
insert into school values('ritika',7,'biology');

rollback to s3;
select * from school;

start transaction;
rollback to s4;


/* Operators in Where*/
show databases;
use sahil;

select * from school;
select name, id from school;
select distinct id from school;
select count(id) from school;
/* WHERE :- Use to filter records*/
select name, id from school where 2 < id and id<7;

select name, id from school where id =6 or id = 4;

select name, id from school where id between 2 and 6;