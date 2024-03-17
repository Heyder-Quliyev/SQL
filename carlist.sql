create database CarData
use CarData

create table CarList
(
Id int primary key identity (1,1),
car_brand varchar (50),
car_name varchar (50),
horsepower varchar (50),
car_speed varchar (50),
origin nvarchar (50)
)

Insert Into CarList
Values

('Toyota', 'Camry', 203, 125, 'Japan'),
('Ford', 'Mustang', 450, 155, 'USA'),
('BMW', 'M5', 600, 190, 'Germany'),
('Mercedes-Benz', 'S-Class', 463, 155, 'Germany'),
('Honda', 'Civic', 158, 130, 'Japan'),
('Chevrolet', 'Corvette', 490, 184, 'USA'),
('Audi', 'A4', 201, 130, 'Germany'),
('Nissan', 'GT-R', 565, 196, 'Japan'),
('Ferrari', '488 GTB', 660, 205, 'Italy'),
('Lamborghini', 'Aventador', 730, 217, 'Italy'),
('Subaru', 'WRX STI', 310, 160, 'Japan'),
('Porsche', '911 Carrera', 379, 182, 'Germany'),
('Mazda', 'MX-5 Miata', 181, 135, 'Japan'),
('Jeep', 'Wrangler', 285, 155, 'USA'),
('Volvo', 'XC90', 316, 130, 'Sweden');

Select*From CarList;

EXEC sp_rename 'CarList.car_brand', 'Brand', 'COLUMN'
Exec sp_rename 'CarList.car_name', 'Name', 'COLUMN'
Exec sp_rename 'CarList.car_speed', 'Speed', 'COLUMN'
exec sp_rename 'CarList.horsepower', 'Horsepower', 'COLUMN'
exec sp_rename 'CarList.origin', 'Origin', 'COLUMN'




select Horsepower from CarList
Where Horsepower < (select AVG(Horsepower) from CarList)



drop table Carlist
--Alter table CarList
--RENAME COLUMN car_brand to CarBrand