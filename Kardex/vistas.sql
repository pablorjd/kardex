CREATE VIEW
VI_ProAlmCan AS
SELECT KARDEX.ProCod, KARDEX.AlmCod, AlmNom, KarCan
FROM KARDEX
INNER JOIN PRODUCTO
ON PRODUCTO.ProCod = KARDEX.ProCod
INNER JOIN ALMACEN
ON ALMACEN.AlmCod = KARDEX.AlmCod;

CREATE VIEW
VI_ProEntMes AS
SELECT KARDEX_DET.ProCod, KARDEX_DET.AlmCod, AlmNom, KarDetCan, KarDetAnio, KarDetMes, KarDetDia
FROM KARDEX_DET
INNER JOIN PRODUCTO
ON PRODUCTO.ProCod = KARDEX_DET.ProCod
INNER JOIN ALMACEN
ON ALMACEN.AlmCod = KARDEX_DET.AlmCod
WHERE KarDetOpe = 1 AND KarDetEstReg = 1;

CREATE VIEW
VI_ProSalMes AS
SELECT KARDEX_DET.ProCod, KARDEX_DET.AlmCod, AlmNom, KarDetCan, KarDetAnio, KarDetMes, KarDetDia
FROM KARDEX_DET
INNER JOIN PRODUCTO
ON PRODUCTO.ProCod = KARDEX_DET.ProCod
INNER JOIN ALMACEN
ON ALMACEN.AlmCod = KARDEX_DET.AlmCod
WHERE KarDetOpe = 0 AND KarDetEstReg = 1;