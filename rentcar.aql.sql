create database RentCar
use RentCar

create table Category 
(
Id int primary key identity (1,1),
[Name] nvarchar (100) not null
)
Insert into Category
Values
('Hyundai')
select*from Category


create table Rentlist
(
Id int primary key identity (1,1),
[Name] nvarchar (100) not null,
Description nvarchar (500) not null,
Price float not null,
CategoryId int not null,
foreign key (CategoryId) references Category(Id)
)
insert into Rentlist
Values
('Kia', 'best car', 20000, 1)

select*from Rentlist
drop table Rentlist
--create procedure usp_IntoValue @name nvarchar (100), @explantion nvarchar (500), @cost float, @numberId int
--as
--Insert Into Product




create procedure usp_update @Id int, @name nvarchar (100), @cost float
As
Update Rentlist
SET Name = @name, Price = @cost
Where Id = @Id

exec usp_update 1, 'Toyota', 35000