/*������� 2. �������� ��������� ���������������� �������:
1. ���������������� ������� ���������� ����������� � �����
�Hello, ���!� ��� ��� ��������� � �������� ���������.
��������, ���� �������� Nick, �� ����� Hello, Nick!*/
--USE Hospital;
/*
CREATE FUNCTION Hello(@name nvarchar(100))
RETURNS nvarchar(100)
AS
BEGIN
DECLARE @new_name nvarchar(100)
SET @new_name = 'Hello ' + @name
RETURN @new_name
END;
GO
*/
--SELECT dbo.Hello('Nick');

/*2. ���������������� ������� ���������� ���������� �
������� ���������� �����*/
--DROP FUNCTION CurrentMinutes;
--GO
/*
CREATE FUNCTION CurrentMinutes()
RETURNS int
AS
BEGIN
DECLARE @cur_minutes int
SET @cur_minutes = DATEPART ( MINUTE , CURRENT_TIMESTAMP)
RETURN @cur_minutes
END;
GO
*/
--SELECT dbo.CurrentMinutes();

/*3. ���������������� ������� ���������� ���������� �
������� ����*/
/*
CREATE FUNCTION CurrentYear()
RETURNS int
AS
BEGIN
DECLARE @cur_year int
SET @cur_year = DATEPART ( YEAR , CURRENT_TIMESTAMP)
RETURN @cur_year
END;
GO

SELECT dbo.CurrentYear();
*/
/*4. ���������������� ������� ���������� ���������� �
���: ������ ��� �������� ���*/
--DROP FUNCTION EvenOddYear;
--GO
/*
CREATE FUNCTION EvenOddYear()
RETURNS nvarchar(100)
AS
BEGIN
DECLARE @even_odd nvarchar(10)
IF ((DATEPART(YEAR,CURRENT_TIMESTAMP) % 2) = 0)
SET @even_odd = 'odd'
ELSE
SET @even_odd = 'even'
RETURN 'Current year is ' + @even_odd
END;
GO

SELECT dbo.EvenOddYear();
*/
/*5. ���������������� ������� ��������� ����� � ���������� yes, ���� ����� ������� � no, ���� ����� �� �������.*/
/*
CREATE FUNCTION SimpleComplexCheck(@number int)
RETURNS nvarchar(10)
AS
BEGIN
DECLARE @simple_complex nvarchar(10), @check_num int
SET @check_num = 2
WHILE(@check_num % @check_num != 0)
SET @check_num = @check_num + 1
IF(@check_num = @number)
SET @simple_complex = 'yes'
ELSE
SET @simple_complex = 'no'
RETURN @simple_complex
END;
GO

SELECT dbo.SimpleComplexCheck(10);
*/
/*6. ���������������� ������� ��������� � �������� ���������� ���� �����. ���������� ����� ������������ � ������������� �������� �� ���������� ����
����������*/
/*
CREATE TABLE [Numbers](
[Id] int not null,
[Values] int
);*/
/*
CREATE FUNCTION MinMaxSumm(@num1 int, @num2 int, @num3 int, @num4 int, @num5 int)
RETURNS int
AS
BEGIN
DECLARE @SDF TABLE 
DECLARE @summ int, @max int, @min int
INSERT INTO [Numbers] ([Values])
VALUES (@num1)
INSERT INTO [Numbers] ([Values])
VALUES (@num2)
INSERT INTO [Numbers] ([Values])
VALUES (@num3)
INSERT INTO [Numbers] ([Values])
VALUES (@num4)
INSERT INTO [Numbers] ([Values])
VALUES (@num5)
SET @max = SELECT * FROM [Numbers] WHERE [Values] = MAX([Values])
SET @min = SELECT * FROM [Numbers] WHERE [Values] = MIN([Values])
SET @summ = @max + @min
RETURN @summ
END;
GO
*/
--SELECT dbo.MinMaxSumm(2, 4, 6, 10, 11);

/*7. ���������������� ������� ���������� ��� ������ ���
�������� ����� � ���������� ���������. ������� ��������� ��� ���������: ������ ���������, ����� ���������,
��� ��� ����� ����������.*/
--CREATE FUNCTION OddEvenRange

--SELECT dbo.Hello('Nick');
--SELECT dbo.CurrentMinutes();
--SELECT dbo.CurrentYear();
--SELECT dbo.EvenOddYear();
--SELECT dbo.SimpleComplexCheck(10);