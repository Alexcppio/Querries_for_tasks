use [Musical Collection];
go


/*������� 1. ��� ������� ���������� ��������� �� ��������� � ���� ������ ������������ ����������, ���������
� ������������ ������� ��� ����� ������. �������� ��������� �������������:*/
/*1. ������������� ���������� �������� ���� ������������*/
/*
CREATE VIEW [Performers_name] ([PerformerName])
AS
SELECT p.Name
FROM [Performers] p;
*/
/*2. ������������� ���������� ������ ���������� � ���� ������: �������� �����, �������� �����, ������������ �����,
����������� ����� �����, �����������*/
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
/*3. ������������� ���������� ���������� � �����������
������ ���������� ������. ��������, The Beatles*/
/*
CREATE VIEW [The_Beatles_disks] ([DiskName])
AS
SELECT d.Name
FROM [Disks] d, [DisksPerformers] dp, [Performers] p
WHERE dp.DiskId = d.Id
AND dp.PerformerId = p.Id
AND p.Name = 'The Beatles';
*/
/*4. ������������� ���������� �������� ������ �����������
� ��������� �����������. ������������ ������������ ��
���������� ������ � ���������*/
/*
CREATE VIEW [Most_popular_performer] ([PerformerName])
AS
SELECT TOP 1 p.Name
FROM [Performers] p, [DisksPerformers] dp
WHERE dp.PerformerId = p.Id
GROUP BY p.Name
ORDER BY COUNT(dp.DiskId);
*/
/*5. ������������� ���������� ���-3 ����� ���������� � ��������� ������������. 
������������ ������������ �� ���������� ������ � ���������*/
/*
CREATE VIEW [Most_popular_performer_top3] ([PerformerName])
AS
SELECT TOP 3 p.Name
FROM [Performers] p, [DisksPerformers] dp
WHERE dp.PerformerId = p.Id
GROUP BY p.Name
ORDER BY COUNT(dp.DiskId) DESC;
*/
/*6. ������������� ���������� ����� ������ �� ������������
����������� ������.*/
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
/*������� 2. ��� ������� ���������� ��������� �� ��������� � ���� ������ ������������ ����������, ���������
� ������������ ������� ��� ����� ������:
1. �������� ����������� �������������, ������� ��������
��������� ����� �����*/
/*
CREATE VIEW [Insert_New_Styles] ([StyleName])
AS
SELECT s.Name
FROM [Styles] s;
*/
/*2. �������� ����������� �������������, ������� ��������
��������� ����� �����*/
/*
CREATE VIEW [Insert_New_Song] ([SongName], [SongDuration])
AS
SELECT s.Name, s.Duration
FROM [Songs] s;
*/
/*3. �������� ����������� �������������, ������� ��������
��������� ���������� �� ��������*/
/*
CREATE VIEW [Change_Publisher_Info] ([Publisher name], [Country], [Legal adress])
AS
SELECT p.Name, p.Country, p.LegalAddress
FROM [Publishers] p;
*/
/*4. �������� ����������� �������������, ������� ��������
������� ������������*/
/*DROP VIEW [Delete_performers];*/
/*
CREATE VIEW [Delete_performers] ([Performer name], [Id], [SongsPerformersPerfID], [DisksPerformersPerfID])
AS
SELECT p.Name, p.Id, sp.PerformerId, dp.PerformerId
FROM [Performers] p, [SongsPerformers] sp, [DisksPerformers] dp; /*��������*/
*/
/*5. �������� ����������� �������������, ������� ��������
��������� ���������� � ���������� �����������. ��������, Muse.*/
/*
CREATE VIEW [Change_Muse_Info] ([Muse])
AS
SELECT p.Name
FROM [Performers] p
WHERE p.Name = 'Muse'
WITH CHECK OPTION;
*/