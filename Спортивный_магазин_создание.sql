/*
use [master];
go

if db_id('SportShop') is not null
begin
	drop database [SportShop];
end
go

create database [SportShop];
go

use [SportShop];
go
*/
/*
1. О товарах: название товара, вид товара (одежда, обувь,
и т.д.), количество товара в наличии, себестоимость, производитель, цена продажи
*/
/*
create table [ProductNames]
(
[Id] int not null identity(1, 1) primary key,
[Name] nvarchar(max) not null check([Name] <> N''),
);

create table [ProductTypes]
(
[Id] int not null identity(1, 1) primary key,
[Type] nvarchar(max) not null check([Type] <> N''),
);

create table [ProductAvailability]
(
[Id] int not null identity(1, 1) primary key,
[Quantity] int not null default 0
);

create table [CostPrices]
(
[Id] int not null identity(1, 1) primary key,
[CostPrice] money not null default 0
);

create table [Manufacturers]
(
[Id] int not null identity(1, 1) primary key,
[Manufacturer] nvarchar(max) not null check([Manufacturer] <> N'')
);

create table [SaleCosts]
(
[Id] int not null identity(1, 1) primary key,
[SaleCosts] money not null default 0
);
*/
/*DROP TABLE [ProductNamesAvailability];*/
/*
create table [ProductNamesAvailability]
(
[Id] int not null identity(1, 1) primary key,
[ProductNamesId] int not null 
foreign key ([ProductNamesId])
references [ProductNames] ([Id]),
[ProductAvailabilityId] int not null
foreign key ([ProductAvailabilityId])
references [ProductAvailability] ([Id])
);
*/
/*DROP TABLE [ProductNamesAvailability];*/
/**/
/*
create table [ProductNamesSaleCosts]
(
[Id] int not null identity(1, 1) primary key,
[ProductNamesId] int not null
foreign key ([ProductNamesId])
references [ProductNames] ([Id]),
[SaleCostsId] int not null
foreign key ([SaleCostsId])
references [SaleCosts] ([Id])
);
*/


/*
2. О продажах: название проданного товара, цена продажи, количество, дата продажи, информация о продавце
(ФИО сотрудника, выполнившего продажу), информация
о покупателе (ФИО покупателя, если купил зарегистрированный покупатель)
3. О сотрудниках: ФИО сотрудника, должность, дата приёма
на работу, пол, зарплата
4. О клиентах: ФИО клиента, email, контактный телефон,
пол, история заказов, процент скидки, подписан ли на
почтовую рассылку.
*/