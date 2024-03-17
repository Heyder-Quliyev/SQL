create database ListFirst
use ListFirst
create table StudentTable
(
Id int,
Name nvarchar (50) not null,
Surname nvarchar (50) not null
);

Insert into StudentTable(Id, name, surname)
Values
(1, 'Heydar', 'Guliyev'),
(2, 'Muller', 'Scholen'),
(3, 'Nolan', 'Nelson')
Select*From StudentTable;



Update StudentTable
Set Name = 'Heyder', Surname = 'Quliyev'
Where Id = 1

Alter Table StudentTable
Add Age int


drop table StudentTable
delete from StudentTable where Id = 1