use [master];
go

if db_id('Sales') is not null
begin
	drop database [Sales];
end
go

create database [Sales];
go

use [Sales];
go

create table [Phones]
(
[Id] int not null identity(1, 1) primary key,
[Phone] varchar(20) not null,
);

create table [Emails]
(
[Id] int not null identity(1, 1) primary key,
[Email] nvarchar(max) not null,
);

create table [Products]
(
[Id] int not null identity(1, 1) primary key,
[Name] nvarchar(max) not null check ([Name] <> N''),
);

create table [Sellers]
(
[Id] int not null identity(1, 1) primary key,
[Name] nvarchar(max) not null check ([Name] <> N''),
[Patronymic] nvarchar(max) not null check ([Patronymic] <> N''),
[Surname] nvarchar(max) not null check ([Surname] <> N''),
[EmailId] int FOREIGN KEY ([EmailId]) REFERENCES [Emails] ([Id]),
[PhoneId] int FOREIGN KEY ([PhoneId]) REFERENCES [Phones] ([Id])
);

create table [Buyers]
(
[Id] int not null identity(1, 1) primary key,
[Name] nvarchar(max) not null check ([Name] <> N''),
[Patronymic] nvarchar(max) not null check ([Patronymic] <> N''),
[Surname] nvarchar(max) not null check ([Surname] <> N''),
[EmailId] int FOREIGN KEY ([EmailId]) REFERENCES [Emails] ([Id]),
[PhoneId] int FOREIGN KEY ([PhoneId]) REFERENCES [Phones] ([Id])
);

create table [Sales]
(
[Id] int not null identity(1, 1) primary key,
[SellerId] int FOREIGN KEY ([SellerId]) REFERENCES [Sellers] ([Id]),
[BuyerId] int FOREIGN KEY ([BuyerId]) REFERENCES [Buyers] ([Id]),
[ProductId] int FOREIGN KEY ([ProductId]) REFERENCES [Products] ([Id]),
[Price] money not null check ([Price] >= 0.0) default 0.0,
[Date] date not null check ([Date] >= '2020-01-01')
);