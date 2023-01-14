---Use Case 1---
---Ability to create a Address Book Service DB---

mysql>create database payroll_service;
1 row(s) affected
---Use Case 2---
---Ability to create a payroll_service---

mysql>show databases
/*
addressbook_service
information_schema
mysql
payroll_service
performance_schema
sakila
sys
world */

---Use Case 2---
---Ability to create a employee payroll table---

mysql>
create table employee_payroll(
id int not null auto_increment,
name varchar(30) not null ,
salary double not null,
start_date date not null,
primary key(id)
);

mysql> show tables;

/*
addressbook
employee_payroll
*/


---Use Case 3---
---Ability to insert contact to employee_payroll---

mysql>
insert into employee_payroll(name,salary,start_date)
values("Sarvesh",6000000.0,'2022-08-22'),
("Prathamesh",8000000.0,'2022-09-11'),
("Rutik",7000000.0,'2022-09-13'),
("Vaibhav",6000000.0,'2022-07-21');

mysql> select * from employee_payroll;

/*
1	Sarvesh	Male	6000000	2022-08-22
2	Prathamesh	Male	8000000	2022-09-11
3	Rutik	Male	7000000	2022-09-13
4	Vaibhav	Male	2800000	2022-07-21
*/

---Use Case 4---
---Ability to retrieve all the employee payroll data---

mysql> select * from employee_payroll;

/*
1	Sarvesh	Male	6000000	2022-08-22
2	Prathamesh	Male	8000000	2022-09-11
3	Rutik	Male	7000000	2022-09-13
4	Vaibhav	Male	2800000	2022-07-21
*/

---Use Case 5---
---Ability to retrieve salary data for a particular employee as well as all employees who have joined in a particular data range from the payroll service database---

mysql>
select * from employee_payroll
where name = "Rutik";

/*
3	Rutik	Male	7000000	2022-09-13
*/

mysql>
select * from employee_payroll
where start_date between cast('2022-08-01' as date)  and date(now());

/*
1	Sarvesh	Male	6000000	2022-08-22
2	Prathamesh	Male	8000000	2022-09-11
3	Rutik	Male	7000000	2022-09-13
*/

---Use Case 6---
---Ability to add Gender to Employee Payroll Table and Update the Rows to reflect the correct Employee Gender----


mysql> alter table employee_payroll add gender varchar(10) after name;

mysql>desc employee_payroll;

/*
name	varchar(30)	NO
gender	varchar(10)	YES
salary	double	NO
start_date	date	NO
*/

mysql>
update employee_payroll
set gender = "Male";

mysql> select * from employee_payroll;

/*
1	Sarvesh	Male	6000000	2022-08-22
2	Prathamesh	Male	8000000	2022-09-11
3	Rutik	Male	7000000	2022-09-13
4	Vaibhav	Male	2800000	2022-07-21
*/

