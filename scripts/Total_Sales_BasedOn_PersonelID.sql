
SELECT p.PersonelID,(p.Adi+' '+p.SoyAdi) [Ad Soyad],SUM(sd.BirimFiyati*sd.Miktar) ToplamSatisMiktari
FROM Personeller p
JOIN Satislar s ON p.PersonelID=s.PersonelID
JOIN SatisDetaylari sd ON sd.SatisID=s.SatisID
GROUP BY p.PersonelID,p.Adi,p.SoyAdi
--Personellerin toplam sat�� miktarlar�n� toplad�k.
