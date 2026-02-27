/****** SSMS’ten SelectTopNRows komutu için betik  ******/
SELECT TOP (1000) [UrunID]
      ,[UrunAdi]
      ,[TedarikciID]
      ,[KategoriID]
      ,[BirimdekiMiktar]
      ,[BirimFiyati]
      ,[HedefStokDuzeyi]
      ,[YeniSatis]
      ,[EnAzYenidenSatisMikatari]
      ,[Sonlandi]
  FROM [Northwind].[dbo].[Urunler]
  --Her Kategoriden Kaç tane ürün var onu hesaplayacağız yani bu yüzden hesaplayacağımız kısımı Count içine yazacağız.
   SELECT 
    k.KategoriID,
    k.KategoriAdi,
    COUNT(u.UrunID) AS UrunSayisi
FROM Kategoriler k
JOIN Urunler u ON u.KategoriID = k.KategoriID
GROUP BY k.KategoriID, k.KategoriAdi;
    --Burada count(*) kategoriID null olan satırları da alır ama benim şu anki sorgumda
    --Count(*) ile Count(UrunID) eşittir çünkü KategoryID zaten null olamaz.
    
