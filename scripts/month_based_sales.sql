
SELECT 
YEAR(s.SatisTarihi) Yil,
MONTH(s.SatisTarihi) Ay,
COUNT(DISTINCT(sd.SatisID)) SatisSayisi,
COUNT(*) UrunSayisi,
ROUND(SUM(sd.Miktar * sd.BirimFiyati*(1-sd.indirim)),2) ToplamTutar
From Personeller p 
  JOIN Satislar s ON s.PersonelID=p.PersonelID 
  JOIN SatisDetaylari sd ON sd.SatisID=s.SatisID
GROUP BY YEAR(s.SatisTarihi),MONTH(s.SatisTarihi)
 ORDER BY Yil,Ay ASC
 --Y�la ve aya g�re yap�lan toplam sat��,sat�lan �r�n say�s� ve toplam tutarlar�
