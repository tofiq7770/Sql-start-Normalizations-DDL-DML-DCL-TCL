create database P418

use P418

create table Teachers(
[Id] int primary key identity(1,1),
[Name] nvarchar(25) not null,
[Surname] nvarchar(25) not null,
[Email] nvarchar(150) unique,
[Age] int not null
)

insert into Teachers([Name],[Surname],[Email],[Age])
values('Cavid','Bashirov','cavid@gmail.com',30),
      ('Kamran','Abdullayev','kamran@gmail.com',32),
      ('Sabir','Guliyev','sabir@gmail.ru',25)

select * from Teachers

select [Name],[Surname] from Teachers where [Age] > 20

select * from Teachers where [Email] LIKE '%c%';

-----------Students-----------

create table Students(
[Id] int primary key identity(1,1),
[FullName] nvarchar(50) not null,
[Age] int not null,
[Address] nvarchar(100)
)

insert into Students([FullName],[Address],[Age])
values ('Tofiq Nasibli','Italy',19),
       ('Haci Ahmedov','Miami',25),  
       ('Mariam Aliyeva','Paris',23)

select * from Students

select Count(*) as [Student Count] from Students