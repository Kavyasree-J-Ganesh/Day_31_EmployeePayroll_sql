---Use Case 1---
---Ability to create a Address Book Service DB---

mysql>create database payroll_service;
1 row(s) affected

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
