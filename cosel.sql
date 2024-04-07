create database Casel
use Casel

create table Brand
(
Id int primary key identity (1,1),
[Name] nvarchar (100) not null 
)

Insert into Brand
Values
('HP'),
('Apple'),
('Xiaomi'),
('Asus')

select*from Brand
--drop table Brand

create table Notebooks
(
Id int primary key identity (1,1),
[Name] nvarchar (100) not null,
Price decimal (10,2) not null
)

Insert Into Notebooks
Values
('Apple MacBook Pro', 1299.99, 2),
('HP Spectre x360', 1199.99, 1),
('Asus ZenBook 14', 899.99, 4),
('MSI GS66 Stealth', 1999.99, 3),
('Alienware x17', 2999.99, 1),
('Vaio Z', 1799.99, 4);
select*from Notebooks
drop table Notebooks

create table Phone
(
Id int primary key identity (1,1),
[Name] nvarchar (100) not null,
[Price] decimal (10,2) not null,
BrandId int foreign key references Brand(Id)
)

Insert Into Phone
Values
('iPhone 13 Pro', 799.00, 2),
('Xiaomi Mi 11', 749.00, 3),
('Asus ROG Phone 5', 999.00, 4),
('Realme GT 2 Pro', 699.00, 3),
('HP Find X5 Pro', 1199.00, 1),
('Vivo X70 Pro+', 899.00, 4)
select*from Phone
--drop table Phone


alter table Notebooks
Add BrandId int foreign key references Brand(Id)

select*from Notebooks n join Brand b on n.BrandId = b.Id


select*from Phone
where Price between 1000 and 2000



