create database Market
Use Market

create table Praducts
(
Id int primary key identity (1,1),
[Name] nvarchar (100) not null,
Price decimal (10,2) not null,
)

insert into Praducts
Values
('Corn Flakes', 3.99),
('Chicken Noodle Soup', 1.99),
('Ketchup', 2.49),
('Oatmeal', 2.79),
('Macaroni & Cheese', 1.49),
('Bottled Water', 0.99),
('Cola', 1.99),
('Cheerios', 3.29),
('Chocolate Bar', 1.00),
('Potato Chips', 2.50),
('Sprite', 1.79),
('Granola Bars', 2.99),
('Green Tea', 3.79),
('Tomato Sauce', 1.29),
('Tuna', 10.89);
 select*from Praducts
 drop table Praducts

 Alter table Praducts
 Add Brand nvarchar (100)

Select Price from Praducts
Where Price > (Select AVG(Price) From Praducts)

select Price from Praducts
Where Price < (Select AVG(Price) From Praducts)
