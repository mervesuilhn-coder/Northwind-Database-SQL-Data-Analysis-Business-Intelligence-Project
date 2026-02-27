--M��terilerin sat�n ald��� toplam �r�n say�lasi ve toplam tutarlar�
SELECT m.MusteriAdi [Musteri Ad Soyad],
ROUND(SUM(sd.BirimFiyati*sd.Miktar*(1-sd.�ndirim)),2) ToplamTutar,
COUNT(DISTINCT(sd.SatisID)) [SatisSayisi]
From Musteriler m
JOIN Satislar s ON s.MusteriID=m.MusteriID
JOIN SatisDetaylari sd ON s.SatisID=sd.SatisID
GROUP BY m.MusteriAdi
ORDER BY m.MusteriAdi ASC
