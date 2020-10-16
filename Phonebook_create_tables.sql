use [master];
go

CREATE DATABASE [Phonebook];
go

use [Phonebook];
go

CREATE TABLE [Peoples]
(
[Id] int not null identity(1, 1) primary key,
[Name] nvarchar(max) not null check([Name] <> N''),
[Patronymic] nvarchar(max) not null check([Patronymic] <> N''),
[Surname] nvarchar(max) not null check([Surname] <> N''),
[BirthDate] date not null check ([BirthDate] >= '1900-01-01'),
[Gender] bit not null default 0,
[Phone] varchar(20) not null,
[CityOfResidence] nvarchar(max) not null check([CityOfResidence] <> N''),
[CountryOfResidence] nvarchar(max) not null check([CountryOfResidence] <> N''),
[HomeAddress] nvarchar(max) not null check([HomeAddress] <> N'')
);
go