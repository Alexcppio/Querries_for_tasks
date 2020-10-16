use [Musical Collection];
go


/*Задание 1. Все задания необходимо выполнить по отношению к базе данных «Музыкальная коллекция», описанной
в практическом задании для этого модуля. Создайте следующие представления:*/
/*1. Представление отображает названия всех исполнителей*/
/*
CREATE VIEW [Performers_name] ([PerformerName])
AS
SELECT p.Name
FROM [Performers] p;
*/
/*2. Представление отображает полную информацию о всех песнях: название песни, название диска, длительность песни,
музыкальный стиль песни, исполнитель*/
/*
CREATE VIEW [Songs_full_information] ([SongName], [SongDuration], [DiskName], [SongStyle], [Performer])
AS
SELECT s.Name, s.Duration, d.Name, st.Name, p.Name
FROM [Songs] s, [Disks] d, [Styles] st, [Performers] p,
[SongsStyles] ss, [DisksSongs] ds, [SongsPerformers] sp
WHERE ds.DiskId = d.Id
AND ds.SongId = s.Id
AND ss.SongId = s.Id
AND ss.StyleId = st.Id
AND sp.PerformerId = p.Id
AND sp.SongId = s.Id;
*/
/*3. Представление отображает информацию о музыкальных
дисках конкретной группы. Например, The Beatles*/
/*
CREATE VIEW [The_Beatles_disks] ([DiskName])
AS
SELECT d.Name
FROM [Disks] d, [DisksPerformers] dp, [Performers] p
WHERE dp.DiskId = d.Id
AND dp.PerformerId = p.Id
AND p.Name = 'The Beatles';
*/
/*4. Представление отображает название самого популярного
в коллекции исполнителя. Популярность определяется по
количеству дисков в коллекции*/
/*
CREATE VIEW [Most_popular_performer] ([PerformerName])
AS
SELECT TOP 1 p.Name
FROM [Performers] p, [DisksPerformers] dp
WHERE dp.PerformerId = p.Id
GROUP BY p.Name
ORDER BY COUNT(dp.DiskId);
*/
/*5. Представление отображает топ-3 самых популярных в коллекции исполнителей. 
Популярность определяется по количеству дисков в коллекции*/
/*
CREATE VIEW [Most_popular_performer_top3] ([PerformerName])
AS
SELECT TOP 3 p.Name
FROM [Performers] p, [DisksPerformers] dp
WHERE dp.PerformerId = p.Id
GROUP BY p.Name
ORDER BY COUNT(dp.DiskId) DESC;
*/
/*6. Представление отображает самый долгий по длительности
музыкальный альбом.*/
/*
CREATE VIEW [Most_long_album] ([AlbumName])
AS
SELECT TOP 1 d.Name
FROM [Disks] d, [Songs] s, [DisksSongs] ds
WHERE ds.DiskId = d.Id
AND ds.SongId = s.Id
GROUP BY d.Name
ORDER BY COUNT(s.Duration);
*/
/*Задание 2. Все задания необходимо выполнить по отношению к базе данных «Музыкальная коллекция», описанной
в практическом задании для этого модуля:
1. Создайте обновляемое представление, которое позволит
вставлять новые стили*/
/*
CREATE VIEW [Insert_New_Styles] ([StyleName])
AS
SELECT s.Name
FROM [Styles] s;
*/
/*2. Создайте обновляемое представление, которое позволит
вставлять новые песни*/
/*
CREATE VIEW [Insert_New_Song] ([SongName], [SongDuration])
AS
SELECT s.Name, s.Duration
FROM [Songs] s;
*/
/*3. Создайте обновляемое представление, которое позволит
обновлять информацию об издателе*/
/*
CREATE VIEW [Change_Publisher_Info] ([Publisher name], [Country], [Legal adress])
AS
SELECT p.Name, p.Country, p.LegalAddress
FROM [Publishers] p;
*/
/*4. Создайте обновляемое представление, которое позволит
удалять исполнителей*/
/*DROP VIEW [Delete_performers];*/
/*
CREATE VIEW [Delete_performers] ([Performer name], [Id], [SongsPerformersPerfID], [DisksPerformersPerfID])
AS
SELECT p.Name, p.Id, sp.PerformerId, dp.PerformerId
FROM [Performers] p, [SongsPerformers] sp, [DisksPerformers] dp; /*Доделать*/
*/
/*5. Создайте обновляемое представление, которое позволит
обновлять информацию о конкретном исполнителе. Например, Muse.*/
/*
CREATE VIEW [Change_Muse_Info] ([Muse])
AS
SELECT p.Name
FROM [Performers] p
WHERE p.Name = 'Muse'
WITH CHECK OPTION;
*/