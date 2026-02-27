
SELECT
    c.MusteriID,
    c.MusteriAdi,
    c.SirketAdi,
    s.SatisID,
    s.SatisTarihi,
    u.UrunAdi,
    sd.Miktar,
    sd.BirimFiyati,
    sd.�ndirim,
    ROUND(sd.Miktar * sd.BirimFiyati*(1-indirim),2) IndirimliFiyat,
    p.Adi + '' + p.Soyadi AS PersonelAdi
FROM Musteriler c
JOIN Satislar s ON c.MusteriID = s.MusteriID
JOIN SatisDetaylari sd ON s.SatisID = sd.SatisID 
JOIN Urunler u ON sd.UrunID = u.UrunID
JOIN Personeller p ON s.PersonelID = p.PersonelID
WHERE c.MusteriID = 'ALFKI';
--Burada M��teriID si "ALFKI" olan m��terinin sipari�ine sair detaylar� tek bir tabloda listeledik.
