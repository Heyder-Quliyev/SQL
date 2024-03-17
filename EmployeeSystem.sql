create database Employee
use Employee

create table Department
(
Id int primary key identity (1,1),
[Name] nvarchar (50) not null,
)
insert into Department
Values
('Manager'),
('Airside Operation')
select*from Department


create table Employees
(
Id int primary key identity (1,1),
[Name] nvarchar (50) not null,
DepartmentId int not null,
foreign key (DepartmentId) references Department(Id),
SalariesId int unique not null,
foreign key (SalariesId) references Salaries(Id)
)
insert into Employees
Values
('Heyder', 1, 2),
('Pavlov', 2, 1)
select*from Employees
drop table Employees

create table Salaries
(
Id int primary key identity (1,1),
amount float not null,
effective date not null
)
insert into Salaries
Values
(1500, '2024-05-02'),
(2500, '2023-06-03')
select*from Salaries

select sum (amount) as 'Total' from Salaries
select count (amount) as 'count' from Salaries
select max (amount) as 'max' from Salaries
select min (amount) as 'min' from Salaries

select e.Id, e.Name, s.amount as 'Salaries', d.Name as 'Depatment Name' from Employees e 
Join Salaries s On e.SalariesId = s.Id
Join Department d On e.DepartmentId = d.Id;



