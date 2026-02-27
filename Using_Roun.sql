SELECT
    c.MusteriID,
    c.SirketAdi,
    COUNT(*) UrunSayisi,
    ROUND(SUM(sd.Miktar * sd.BirimFiyati*(1-indirim)),2) ToplamTutar
FROM Musteriler c
JOIN Satislar s ON c.MusteriID = s.MusteriID
JOIN SatisDetaylari sd  ON s.SatisID = sd.SatisID
--WHERE c.MusteriID = 'ALFKI'
GROUP BY
    c.MusteriID,
    c.SirketAdi
HAVING COUNT(*)>=100 OR ROUND(SUM(sd.Miktar * sd.BirimFiyati*(1-indirim)),2)>=50000
ORDER BY ToplamTutar DESC
-- Bu sorgumuzSda Satis detaylari tablomuzdan elde ettigimiz satilan "miktar,fiyat ve indirim" verilerimiz
    --ile "ALFKI" musteriID sine sahip musterinin toplam siparis tutarına ulastik.
