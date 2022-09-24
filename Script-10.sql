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
select * from SS_employee2;//output

