--"G�NLERE" g�re yap�lan toplam sat��,sat�lan �r�n say�s� ve toplam tutarlar�
--Y�la ve aya g�re yap�lan toplam sat��,sat�lan �r�n say�s� ve toplam tutarlar�
SELECT 
CAST(s.SatisTarihi AS DATE) Gun,
COUNT(DISTINCT(s.SatisID)) SatisSayisi,
COUNT(*) UrunSayisi,
ROUND(SUM(sd.Miktar * sd.BirimFiyati*(1-indirim)),2) ToplamTutar
From Personeller p
  JOIN Satislar s ON s.PersonelID=p.PersonelID 
  JOIN SatisDetaylari sd ON sd.SatisID=s.SatisID
  WHERE CAST(s.SatisTarihi AS DATE) BETWEEN '1998-01-01' AND '1998-12-31'
GROUP BY CAST(s.SatisTarihi AS DATE)
 ORDER BY Gun ASC
