use [Sales];
go

/*������� 3. ��� ������� ���������� ��������� �� ��������� � ���� ������ ��������, ��������� � ������������
������� ��� ����� ������:
1. �������� ����������� �������������, ������� ����������
���������� � ���� ���������*/
/*
CREATE VIEW [Sellers_show_all] ([Fullname], [Phone], [Email])
AS
SELECT s.Name + ' ' + s.Patronymic + ' ' + s.Surname,
p.Phone, e.Email
FROM [Sellers] s, [Phones] p, [Emails] e
WHERE s.PhoneId = p.Id
AND s.EmailId = e.Id;
*/
/*2. �������� ����������� �������������, ������� ����������
���������� � ���� �����������*/
/*
CREATE VIEW [Buyers_show_all] ([Fullname], [Phone], [Email])
AS
SELECT b.Name + ' ' + b.Patronymic + ' ' + b.Surname,
p.Phone, e.Email
FROM [Buyers] b, [Phones] p, [Emails] e
WHERE b.PhoneId = p.Id
AND b.EmailId = e.Id;
*/
/*3. �������� ����������� �������������, ������� ����������
���������� � ���� �������� ����������� ������. ��������, '������ HAMMER FRZ1200B'*/
/*
CREATE VIEW [Sales_HAMMER_FRZ1200B] ([SellerFullname], [BuyerFullname], 
[ProductName], [Price], [Date])
AS
SELECT s.Name + ' ' + s.Patronymic + ' ' + s.Surname,
b.Name + ' ' + b.Patronymic + ' ' + b.Surname,
p.Name, sa.Price, sa.Date
FROM [Sales] sa, [Products] p, [Buyers] b, [Sellers] s
WHERE sa.BuyerId = b.Id
AND sa.SellerId = s.Id
AND sa.ProductId = p.Id
AND p.Name = '������ HAMMER FRZ1200B';
*/
/*4. �������� �������������, ������������ ��� �������������� ������*/
/*
CREATE VIEW [Sales_all] ([SellerFullname], [BuyerFullname], 
[ProductName], [Price], [Date])
AS
SELECT s.Name + ' ' + s.Patronymic + ' ' + s.Surname,
b.Name + ' ' + b.Patronymic + ' ' + b.Surname,
p.Name, sa.Price, sa.Date
FROM [Sales] sa, [Products] p, [Buyers] b, [Sellers] s
WHERE sa.BuyerId = b.Id
AND sa.SellerId = s.Id
AND sa.ProductId = p.Id;
*/
/*5. �������� �������������, ������������ ���������� � ����� �������� ��������. ���������� ������ ���������
�������� �� ������������ ����� ����� ������*/
/*
CREATE VIEW [Most_active_seller] ([Fullname], [Summ Of sales])
AS
SELECT TOP 1 s.Name + ' ' + s.Patronymic + ' ' + s.Surname,
SUM(sa.Price)
FROM [Sellers] s, [Sales] sa
WHERE sa.SellerId = s.Id
GROUP BY s.Name, s.Patronymic, s.Surname
ORDER BY SUM(sa.Price) DESC;
*/
/*6. �������� �������������, ������������ ���������� � ����� �������� ����������. ���������� ������ ���������
���������� �� ������������ ����� ����� �������.*/
/*
CREATE VIEW [Most_active_buyer] ([Fullname], [Summ of buys])
AS
SELECT TOP 1 b.Name + ' ' + b.Patronymic + ' ' + b.Surname,
SUM(sa.Price)
FROM [Buyers] b, [Sales] sa
WHERE sa.BuyerId = b.Id
GROUP BY b.Name, b.Patronymic, b.Surname
ORDER BY SUM(sa.Price) DESC;
*/