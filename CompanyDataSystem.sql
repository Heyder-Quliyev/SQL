create database Company
use Company

create table Department
(
Id int primary key identity (1,1),
[Name] nvarchar (50) not null
)
insert into Department
Values
('Back-end Junior'),
('Full Stack Junior')
select*from Department

--------------------------------------------------------

create table Customers
(
Id int primary key identity (1,1),
[Name] nvarchar (50) not null,
[Surname] nvarchar (50) not null,
Salary int,
DepartmentId int not null
foreign key (DepartmentId) references Department(Id)
)

insert into Customers
Values
('Heyder', 'Guliyev', 3500, 1),
('Boris', 'Johnson', 3800, 2)
select*from Customers

Update Customers
Set Salary = 3900
Where DepartmentId = 1.

delete from Customers where  Salary= 3900;

select*
From Customers
Where Salary<  (Select AVG(Salary) From Customers)

Select Surname from Customers
Where Salary < (Select AVG(Salary) From Customers)

select Name from Customers
Where Salary > (Select AVG(Salary) From Customers)