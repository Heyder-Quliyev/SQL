create database [User]
use [User]
create table UserTable
(
Id int primary key identity(1,1),
Fullname nvarchar (50) not null,
Gmail nvarchar (100) unique Check(Gmail like '%@gmail.com'),
Gender nvarchar (10) Check(Gender = 'male' or Gender = 'female'),
Country nvarchar (30) default 'USA'
);

Insert Into UserTable(Fullname, Gmail, Gender, Country)
Values
('David Hamiton', 'hamiltonDavid@gmail.com', 'male', 'USA'),
('Marta Amir', 'martamir@gmail.com', 'female', 'France'),
('Polina Vladimirovich', 'polinavladimirovich@gmail.com', 'female', 'Russia'),
('Muller Schelder', 'agbc@gmail.com', 'male', 'Germany'),
('Boris Johnson', 'borisjon@gmail.com', 'male', 'UK')
Select*From UserTable;

Select*From UserTable where Fullname like 'M%' or Fullname like'D%'
Select*From UserTable where Gender like 'female'

Alter Table UserTable
Add Password varchar (255) not null Default '1578'
alter table UserTable
add status bit not null default 0

select*from UserTable
order by Id desc
select*from UserTable
order by Country desc




delete from UserTable where Id = 1
Drop Table UserTable;