
  --Bu normal hali 
  SELECT u.UrunID,MAX(sd.BirimFiyati) AS maxfiyat,u.UrunAdi
  FROM SatisDetaylari sd
  JOIN Urunler u ON u.UrunID=sd.UrunID
  GROUP BY u.UrunID,u.UrunAdi
  ORDER BY MAX(sd.BirimFiyati) DESC

  --Bu ise WINDOWS FUNCTİON kullanılmış hali
SELECT 
    u.UrunID,
    u.UrunAdi,
    MAX(sd.BirimFiyati) AS MaksimumFiyat,
    ROW_NUMBER() OVER(ORDER BY MAX(sd.BirimFiyati) DESC) AS SiraNo
FROM SatisDetaylari sd
JOIN Urunler u ON sd.UrunID = u.UrunID
GROUP BY u.UrunID, u.UrunAdi
ORDER BY SiraNo

  SELECT *
FROM (
    SELECT 
        u.UrunID,
        sd.BirimFiyati,
        u.UrunAdi,
        ROW_NUMBER() OVER (ORDER BY sd.BirimFiyati DESC) AS EnYuksek
    FROM SatisDetaylari sd
    JOIN Urunler u ON sd.UrunID = u.UrunID
) t
WHERE EnYuksek = 1;



  
