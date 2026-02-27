--Satis Sayisi 43 ile 100 arasında olan personeller
SELECT p.PersonelID ,(p.Adi+' '+p.SoyAdi) PersonelAdSoyad,COUNT(*) SatisSayisi
From Personeller p
  JOIN Satislar s ON s.PersonelID=p.PersonelID 
GROUP BY p.PersonelID,(p.Adi+' '+p.SoyAdi)
 HAVING COUNT(*) BETWEEN 43 AND 100
 ORDER BY PersonelAdSoyad ASC
