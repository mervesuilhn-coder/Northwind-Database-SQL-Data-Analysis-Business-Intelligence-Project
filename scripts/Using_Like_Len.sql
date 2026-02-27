/****** SSMS’ten SelectTopNRows komutu için betik  ******/
SELECT TOP (1000) [MusteriID]
      ,[SirketAdi]
      ,[MusteriAdi]
      ,[MusteriUnvani]
      ,[Adres]
      ,[Sehir]
      ,[Bolge]
      ,[PostaKodu]
      ,[Ulke]
      ,[Telefon]
      ,[Faks]
  FROM [Northwind].[dbo].[Musteriler]

   SELECT * FROM Musteriler WHERE MusteriUnvani LIKE '%Owner%'
  
   SELECT * FROM Musteriler WHERE LEN(Ulke)=5
