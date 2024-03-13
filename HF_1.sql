SELECT COUNT(*) AS 'Sorok száma'
FROM Nyersanyagok

SELECT MAX(Egysegar) AS 'A legmagasabb egységár',
    MIN(Egysegar) AS 'A legalacsonyabb egységár',
    AVG(Egysegar) AS 'Egységárak átlaga'
FROM Nyersanyagok
WHERE Egysegar > 0 

SELECT 
    FogasNev AS 'Fogás név',
    COUNT(*) AS 'Előfordulásainak száma'
FROM 
    Fogasok
GROUP BY 
    FogasNev
HAVING 
    COUNT(*) > 1;

SELECT TOP 10 FogasNev AS 'Legrövidebb fogás nevek', 
        LEN(FogasNev) AS 'Legrövidebb fogás nevek hossza'
FROM Fogasok
WHERE LEN(FogasNev) > 0
GROUP BY FogasNev
ORDER BY 2 ASC

SELECT TOP 10 FogasNev AS 'Leghosszabbb fogás nevek', 
        LEN(FogasNev) AS 'Leghosszabb fogás nevek hossza'
FROM Fogasok
GROUP BY FogasNev
ORDER BY 2 DESC