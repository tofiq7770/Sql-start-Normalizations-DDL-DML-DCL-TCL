create database Practice

use Practice

create table Students(
[Name] nvarchar(50),
[Surname] nvarchar(50)
)

create table Groups(
[Id] int,
[Name] nvarchar(50)
)

alter table Students
add [Id] int

alter table Students
add [Address] nvarchar

alter table Students
drop column [Address]

alter table Students
add [Age] int

EXEC sp_rename Students,Stu

EXEC sp_rename Stu,Students

Exec sp_rename 'Students.Surname',Lastname

Exec sp_rename 'Students.Lastname',Surname

select * from Students

select * from Groups

select [Name] from Students


insert into Students([Id],[Name],[Surname],[Age])
values (1,'Tofiq','Nasibli',19),
(2,'Mariam','Alieva',23),
(3,'Haci','Ahmedov',25)


select [Name],[Surname] from Students

select Count(*)  from Students

select * from Students where [Id]=2
     

select * from Students where [Id]>2


select * from Students where [Age]<24


select * from Students where [Age]<24 and [Age]>19


    
select * from Students where [Name] like '%a%'

delete from Students where [Id]=2

Update Students
set [Age]=24
where [Id]=1

create table Employees(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),
[Surname] nvarchar(50) not null,
[Email] nvarchar(150) unique
)

drop table Employees


select * from Employees

insert into Employees([Name],[Surname],[Email])
values ('Tofiq', 'Nasibli', 'tofiq@gmail.com')



