--Sat�s tablosuna g�re personellerin yapt��� sat�� say�lar� �r�n say�lar� ve toplam sat�� tutarlar� 
--Sat��lar tablosunda d�st�ct yapmana gerek yok ��nk� bir personelin ka� �r�n satt���na g�re ayr� sat�rlar yok tek sat�� tek sat�r
SELECT 
p.PersonelID,
(p.Adi+' '+p.SoyAdi) PersonelAdSoyad,
COUNT(s.SatisID) SatisSayisi,
COUNT(*) UrunSayisi,
ROUND(SUM(sd.Miktar * sd.BirimFiyati*(1-indirim)),2) ToplamTutar
From Personeller p
  JOIN Satislar s ON s.PersonelID=p.PersonelID 
  JOIN SatisDetaylari sd ON sd.SatisID=s.SatisID
  --WHERE p.PersonelID=9 demek istersen join ile from aras�nda buraya koymal�s�n WHERE yi
GROUP BY p.PersonelID,(p.Adi+' '+p.SoyAdi)
-- HAVING COUNT(p.PersonelID) BETWEEN 43 AND 100
 ORDER BY PersonelAdSoyad ASC
---------------------------------------------------------------------------------------------------------------------------------------------
 --Burada ise sat�� detaylar� tablosunda �r�n bazl� sat�r da��l�m� var bu y�zden bir sat���n 4 sat�r 
 --�r�nleri oldu�u i�in sat��ID 4 kere tekrarlan�yor alt sat�rlarda bu y�zden DISTINCT kullan�yoruz.
 SELECT 
p.PersonelID,
(p.Adi+' '+p.SoyAdi) PersonelAdSoyad,
COUNT(DISTINCT(s.SatisID)) SatisSayisi,
COUNT(*) UrunSayisi,
ROUND(SUM(sd.Miktar * sd.BirimFiyati*(1-indirim)),2) ToplamTutar
From Personeller p
  JOIN Satislar s ON s.PersonelID=p.PersonelID 
  JOIN SatisDetaylari sd ON sd.SatisID=s.SatisID
  --WHERE p.PersonelID=9
GROUP BY p.PersonelID,(p.Adi+' '+p.SoyAdi)
-- HAVING COUNT(p.PersonelID) BETWEEN 43 AND 100
 ORDER BY PersonelAdSoyad ASC
