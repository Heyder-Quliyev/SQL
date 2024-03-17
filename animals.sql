create database Biology
Use Biology


create table Flora
(
Id int primary key identity (1,1),
[Name] nvarchar (100),
[Class] nvarchar (100),
[Habitat] nvarchar (100)
)
insert into Flora
Values
('Rose', 'Flower', 'Garden'),
('Oak Tree', 'Tree', 'Forest'),
('Cactus', 'Succulent', 'Desert'),
('Sunflower', 'Flower', 'Field'),
('Fern', 'Fern', 'Forest'),
('Bamboo', 'Grass', 'Jungle'),
('Dandelion', 'Weed', 'Grassland'),
('Pine Tree', 'Tree', 'Mountain'),
('Tulip', 'Flower', 'Garden'),
('Maple Tree', 'Tree', 'Temperate Forest'),
('Lavender', 'Herb', 'Garden'),
('Palm Tree', 'Tree', 'Tropical'),
('Carnation', 'Flower', 'Garden'),
('Redwood Tree', 'Tree', 'Forest'),
('Moss', 'Moss', 'Forest')
select*from Flora

create table Animals
(
Id int primary key identity (1,1),
[Name] varchar (200) not null,
[Class] varchar (200) not null,
Weight decimal (10,2) not null,
[Habitat] varchar (100) not null
)

insert into Animals
Values
('Tiger', 'Mammal', 300, 'Jungle'),
('Eagle', 'Bird', 10, 'Mountains'),
('Python', 'Reptile', 50, 'Tropical Rainforest'),
('Great White Shark', 'Fish', 2000, 'Ocean'),
('Elephant', 'Mammal', 5000, 'Savannah'),
('Lion', 'Mammal', 200, 'Grasslands'),
('Penguin', 'Bird', 20, 'Antarctica'),
('Crocodile', 'Reptile', 500, 'Swamp'),
('Gorilla', 'Mammal', 180, 'Rainforest'),
('Bald Eagle', 'Bird', 14, 'Forest'),
('Komodo Dragon', 'Reptile', 90, 'Island'),
('Blue Whale', 'Mammal', 150000, 'Ocean'),
('Ostrich', 'Bird', 100, 'Desert'),
('Alligator', 'Reptile', 400, 'Marsh'),
('Kangaroo', 'Mammal', 90, 'Outback')
select*from Animals

drop table Animals

create table FloraandFauna
(
AnimalsId int not null,
foreign key (AnimalsId) references Animals(Id),
FloraId int not null,
foreign key (FloraId) references Flora(Id)
)
insert into FloraandFauna
Values
(1,1),
(1,2),
(2,5),
(5,1),
(10,7)

select*from FloraandFauna

select e.Id, e.Name, s.amount as 'Salaries', d.Name as 'Depatment Name' from Employees e 
Join Salaries s On e.SalariesId = s.Id
Join Department d On e.DepartmentId = d.Id;

select a.Id, a.Name, f.Id, f.Name from FloraandFauna a
Join Flora f on a.AnimalsId = f.Id


