
create database quiz;

Create Table Employee
(
 empid int,
 empname varchar(20),
 managerid int, 
 deptid int  References Department(deptid),
 salary int,
 DOB date
 );

 create Table Department
 (
   deptid int Primary Key,
   deptname varchar(20)
 );




