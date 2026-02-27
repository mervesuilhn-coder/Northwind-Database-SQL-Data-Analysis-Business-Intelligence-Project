/****** SSMS’ten SelectTopNRows komutu için betik  ******/
SELECT TOP (1000) [SatisID]
      ,[MusteriID]
      ,[PersonelID]
      ,[SatisTarihi]
      ,[OdemeTarihi]
      ,[SevkTarihi]
      ,[ShipVia]
      ,[NakliyeUcreti]
      ,[SevkAdi]
      ,[SevkAdresi]
      ,[SevkSehri]
      ,[SevkBolgesi]
      ,[SevkPostaKodu]
      ,[SevkUlkesi]
      ,DATEDIFF(DAY, SatisTarihi, SevkTarihi) AS GunFarki
  FROM [Northwind].[dbo].[Satislar]

--Satis tarihi ile sevk tarihi arasındaki gün farkını bulduk.

--Eğer mesela çalışan yaşını bulmak isteseydik 
  select datedıff(year,birthdate,getdate()) AS yas from Employees"
--getdate demek günümüze kadar say demek.

--Çalışanların işe kaç yaşında başladıklarını bulmak için 
Select Datedıff(Year,Birthdate,Hiredate) AS isebaslangicyasi from musteriler
--Çalışanların yaş ortalaması için AVG(DATEDIFF(year,birthdate,getdate())) AS Calisanlar FRPM employee
