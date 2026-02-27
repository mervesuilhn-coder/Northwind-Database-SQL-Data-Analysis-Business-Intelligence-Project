SELECT 
    u.UrunAdi,
    k.KategoriAdi,
    k.KategoriID,
    ROUND(SUM(sd.BirimFiyati * sd.Miktar * (1 - sd.indirim)), 2) AS ToplamTutar,
    ROW_NUMBER() OVER(
        PARTITION BY k.KategoriID 
        ORDER BY SUM(sd.BirimFiyati * sd.Miktar * (1 - sd.indirim)) DESC
    ) AS SiraNo
FROM Urunler u
JOIN Kategoriler k ON k.KategoriID = u.KategoriID
JOIN SatisDetaylari sd ON u.UrunID = sd.UrunID 
GROUP BY 
    k.KategoriID, 
    k.KategoriAdi, 
    u.UrunAdi;

