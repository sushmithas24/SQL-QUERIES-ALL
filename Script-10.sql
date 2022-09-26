create table sushmita.dbo.SS_department
(
department_id int PRIMARY KEY,
department_name varchar(100) NOT NULL UNIQUE,
department_head varchar(100)
);
create table sushmita.dbo.SS_employee
(
employee_id int PRIMARY KEY,
employee_name varchar(100) NOT NULL,
employee_department Int Foreign Key (employee_department) references SS_department(department_id)
);
insert into SS_department values(1,'test','manu');
insert into SS_department values(2,'db','pooja');
insert into SS_department values(3,'.net','ravindra');
select * from SS_department;
insert into SS_employee values(10,'suresh',2);
insert into SS_employee values(23,'pallavi',1);
insert into SS_employee values(30,'sanvi',1);
select * from SS_employee;
 

-- Creation of Table 
create table dept( 
dept_id int primary key, 
dept_Name varchar(50) not null 
); 
--Insertion of values 
insert into dept values 
(1,'HR'),(2,'IT'),(3,'Design'),(4,'Finance'); 
-- Creating Employee Table 
create table employee( 
emp_id int primary key, 
Name varchar(50) unique, 
dept_id int foreign key references dept(dept_id), email varchar(50) default 'company@email.com', Age int check(age>21) 
); 
insert into employee values 
(1,'Anitha',1,'Anitha@evry.com',22); 
insert into employee values 
(2,'Ankith',3,'Ankith@evry.com',22); 
insert into employee (emp_id,name,dept_id,age) values (3,'Pallavi',4,25); 
insert into employee values 
(4,'Jayanth',3,'Jayanth@evry.com',23); 
drop table dept; 
drop table employee; 
delete from dept where dept_id=3; 
select * from employee; 
-----REFERENCIAL INTEGRITY------ 
alter table employee drop constraint FK_emp_dept_id;
alter table employee add constraint FK_emp_dept_id foreign key (dept_id)  
references dept(dept_id) on delete cascade on update cascade;--- On delete cascade 
select * from employee; 
select * from dept; 
delete from dept where dept_id=3; 
update dept set dept_id=3 where dept_name='Finance'; ---On delete/ Update set null---- 
alter table employee drop constraint FK_emp_dept_id; 
alter table employee add constraint FK_emp_dept_id foreign key (dept_id)  
references dept(dept_id) on delete set null on update set null; 
select * from employee; 
select * from dept; 
insert into employee values 
(2,'Anaa',2,'Anaa@outlook.com',23), 
(4,'Ajay',2,'Ajay@outlook.com',23); 
insert into dept values (4,'testing'); 
delete from dept where dept_id=3; 
update dept set dept_id=4 where dept_name='IT'; 
select * from employee; 
select * from dept; 
----On Delete /Update set Default---- 
alter table employee drop constraint FK_emp_dept_id;
alter table employee add constraint FK_emp_dept_id foreign key (dept_id)  
references dept(dept_id) on delete set default on update set default; 
select * from employee; 
select * from dept; 
-- Creation of Table 
create table dept( 
dept_id int primary key, 
dept_Name varchar(50) not null 
); 
--Insertion of values 
insert into dept values 
(1,'HR'),(2,'IT'),(3,'Design'),(4,'Finance'); 
create table employee( 
emp_id int primary key, 
Name varchar(50) unique, 
dept_id int default 1 foreign key references dept(dept_id)  on delete set default on update set default, 
email varchar(50) default 'company@email.com', Age int check(age>21) 
); 
insert into employee values 
(1,'Anitha',1,'Anitha@evry.com',22); 
insert into employee values 
(2,'Ankith',3,'Ankith@evry.com',22); 
insert into employee (emp_id,name,dept_id,age) values (3,'Pallavi',4,25); 
insert into employee values 
(4,'Jayanth',3,'Jayanth@evry.com',23); 
select * from employee; 
select * from dept;
delete from dept where dept_id=4; 
update dept set dept_id=4 where dept_Name='Design'; 
select * from employee; 
select * from dept;


create table task
(
customerid	float,
customername varchar(100),
location varchar(100),
productid	varchar(100),
productname	 varchar(100),
);
insert into task(customerid,customername,location,productid,productname) values(100,'Arunagiri','Bangalore','848930A','Cholocates'),
(101,'Anjali','Belgavi','839127B','Dress'),
(102,'Neha','Mangalore','473929C','Tv'),
(103,'Sushmitha','Malnad','837293D','Mobile');
Select * from task;

create table target
(
customerid	float,
customername varchar(100),
location varchar(100),
productid	varchar(100),
productname	 varchar(100),
startdate	date,
enddate	date,
status varchar(100)
);

Select * from target;
update task  set productname='gate' where customerid=102;

drop table target;

create table task
(
customerid	float,
customername varchar(100),
location varchar(100),
productid	varchar(100),
productname	 varchar(100),
);
insert into task(customerid,customername,location,productid,productname) values(100,'Arunagiri','Bangalore','848930A','Cholocates'),
(101,'Anjali','Belgavi','839127B','Dress'),
(102,'Neha','Mangalore','473929C','Tv'),
(103,'Sushmitha','Malnad','837293D','Mobile');
Select * from task;

;with deleterecord as
(
select * from (select row_number() over( partition by customerid order by customerid ASC )as XY
from task)X
)
delete from deleterecord where XY>1;

create table target
(
customerid	float,
customername varchar(100),
location varchar(100),
productid	varchar(100),
productname	 varchar(100),
startdate	datetime,
enddate	datetime,
status varchar(100)
);


Select * from target;

update task  set customername='John' where customerid=102;
update task  set location='Hassan' where customerid=103;
update task  set productname='gate' where customerid=102;















