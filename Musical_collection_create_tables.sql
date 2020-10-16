use [master];
go

if db_id('Musical Collection') is not null
begin
	drop database [Musical Collection];
end
go

create database [Musical Collection];
go

use [Musical Collection];
go

create table [Disks]
(
[Id] int not null identity(1, 1) primary key,
[Name] nvarchar(100) not null unique check ([Name] <> N''),
[Date] date not null check ([Date] >= '1900-01-01')
);

create table [Styles]
(
[Id] int not null identity(1, 1) primary key,
[Name] nvarchar(100) not null unique check ([Name] <> N''),
);

create table [Performers]
(
[Id] int not null identity(1, 1) primary key,
[Name] nvarchar(100) not null check ([Name] <> N''),
);

create table [Publishers]
(
[Id] int not null identity(1, 1) primary key,
[Name] nvarchar(100) not null check ([Name] <> N''),
[Country] nvarchar(100) not null unique check ([Country] <> N'')
);

create table [Songs]
(
[Id] int not null identity(1, 1) primary key,
[Name] nvarchar(100) not null check ([Name] <> N''),
[Duration] time not null check ([Duration] >= '00:00:00')
);

create table [DisksPublishers]
(
[Id] int not null identity(1, 1) primary key,
[PublisherId] int not null foreign key ([PublisherId])
references [Publishers] ([Id]),
[DiskId] int not null foreign key ([DiskId])
references [Disks] ([Id])
);

create table [DisksPerformers]
(
[Id] int not null identity(1, 1) primary key,
[PerformerId] int not null foreign key ([PerformerId])
references [Performers] ([Id]),
[DiskId] int not null foreign key ([DiskId])
references [Disks] ([Id])
);

create table [DisksStyles]
(
[Id] int not null identity(1, 1) primary key,
[DiskId] int not null foreign key ([DiskId])
references [Disks] ([Id]),
[StyleId] int not null foreign key ([StyleId])
references [Styles] ([Id])
);

create table [DisksSongs]
(
[Id] int not null identity(1, 1) primary key,
[DiskId] int not null foreign key ([DiskId])
references [Disks] ([Id]),
[SongId] int not null foreign key ([SongId])
references [Songs] ([Id])
);

create table [SongsStyles]
(
[Id] int not null identity(1, 1) primary key,
[SongId] int not null foreign key ([SongId])
references [Songs] ([Id]),
[StyleId] int not null foreign key ([StyleId])
references [Styles] ([Id])
);

create table [SongsPerformers]
(
[Id] int not null identity(1, 1) primary key,
[SongId] int not null foreign key ([SongId])
references [Songs] ([Id]),
[PerformerId] int not null foreign key ([PerformerId])
references [Performers] ([Id])
);