USE rentabilidad;

-- KPI COSTOS INVERSIONES
SELECT
    i.ID AS Inversion_ID,
    i.Nombre AS Nombre_Inversion,
    ROUND(SUM(g.Monto * tc.Tasa), 2) AS Total_Costo_USD,
    COUNT(g.ID) AS Cantidad_Gastos
FROM
    (
        -- Unimos los gastos actuales y los históricos en una sola tabla temporal
        (
            SELECT
                gastos_inversion.Inversion_ID,
                gastos_inversion.Monto,
                gastos_inversion.ID
            FROM
                gastos_inversion
            UNION ALL
            SELECT
                historico_gastos.Inversion_ID,
                historico_gastos.Monto,
                historico_gastos.ID
            FROM
                historico_gastos
        ) AS g
        -- Relacionamos con la tabla inversiones
        JOIN inversiones i ON g.Inversion_ID = i.ID
    )
    -- Relacionamos con las tasas de cambio
    JOIN tasas_cambio tc ON i.Moneda_ID = tc.Moneda_ID
GROUP BY
    i.ID,
    i.Nombre;

-- KPI RENTABILIDAD PROMEDIO INVERSION 
SELECT
    r.Inversion_ID AS Inversion_ID,
    i.Nombre AS Nombre,
    AVG(r.Rendimiento_Porcentual) AS `AVG(r.Rendimiento_Porcentual)`
FROM
    rendimientos r
    JOIN inversiones i ON (r.Inversion_ID = i.ID)
    JOIN tasas_cambio tc ON (i.Moneda_ID = tc.Moneda_ID)
GROUP BY
    r.Inversion_ID;

WITH
    ultimo_reporte AS (
        SELECT
            reportes_riesgo.Portafolio_ID AS Portafolio_ID,
            MAX(reportes_riesgo.Fecha) AS Ultima_Fecha
        FROM
            reportes_riesgo
        GROUP BY
            reportes_riesgo.Portafolio_ID
    )
    -- KPI RIESGO PORTAFOLIO 
SELECT
    p.ID AS Portafolio_ID,
    p.Nombre AS Nombre_Portafolio,
    d.Inversion_ID AS Inversion_ID,
    d.Porcentaje_Asignado AS Peso_Inversion,
    ((rr.Riesgo_Total * d.Porcentaje_Asignado) / 100) AS Riesgo_Contribuido,
    rr.Volatilidad AS Volatilidad_Portafolio
FROM
    portafolios p
    JOIN diversificacion d ON p.ID = d.Portafolio_ID
    JOIN ultimo_reporte ur ON p.ID = ur.Portafolio_ID
    JOIN reportes_riesgo rr ON ur.Portafolio_ID = rr.Portafolio_ID
    AND ur.Ultima_Fecha = rr.Fecha;

-- KPI ROI POR INVERSION
SELECT
    r.Inversion_ID AS Inversion_ID,
    i.Nombre AS Nombre,
    ROUND(SUM(r.Rendimiento_Monetario * tc.Tasa), 2) AS `TOTAL BENEFICIO NETO POR INVERSION (USD)`,
    ROUND(SUM(i.Monto_Inicial * tc.Tasa), 2) AS `TOTAL DE INVERSION POR INVERSION (USD)`,
    ROUND(
        (
            SUM(r.Rendimiento_Monetario * tc.Tasa) / SUM(i.Monto_Inicial * tc.Tasa)
        ) * 100,
        2
    ) AS `ROI %`
FROM
    rendimientos r
    JOIN inversiones i ON r.Inversion_ID = i.ID
    JOIN tasas_cambio tc ON i.Moneda_ID = tc.Moneda_ID
GROUP BY
    r.Inversion_ID;

-- KPI VOLATILIDAD MERCADO
WITH
    volatilidad_mensual AS (
        SELECT
            YEAR (mercado.Fecha) AS Año,
            MONTH (mercado.Fecha) AS Mes,
            mercado.Tipo_Indice AS Tipo_Indice,
            AVG(mercado.Volatilidad) AS Volatilidad_Media
        FROM
            mercado
        GROUP BY
            Año,
            Mes,
            mercado.Tipo_Indice
    ),
    roi_mensual AS (
        SELECT
            YEAR (r.Fecha) AS Año,
            MONTH (r.Fecha) AS Mes,
            (
                SUM(r.Rendimiento_Monetario * tc.Tasa) / SUM(i.Monto_Inicial * tc.Tasa)
            ) * 100 AS ROI_Promedio,
            STD (r.Rendimiento_Porcentual) AS Desviacion_Rentabilidad
        FROM
            rendimientos r
            JOIN inversiones i ON r.Inversion_ID = i.ID
            JOIN tasas_cambio tc ON i.Moneda_ID = tc.Moneda_ID
        GROUP BY
            YEAR (r.Fecha),
            MONTH (r.Fecha)
    )
SELECT
    STR_TO_DATE (CONCAT (v.Año, '-', v.Mes, '-01'), '%Y-%m-%d') AS Fecha,
    v.Tipo_Indice AS Tipo_Indice,
    v.Volatilidad_Media AS Volatilidad_Media,
    r.ROI_Promedio AS ROI_Promedio,
    (
        (
            v.Volatilidad_Media - (
                SELECT
                    AVG(volatilidad_mensual.Volatilidad_Media)
                FROM
                    volatilidad_mensual
            )
        ) * (
            r.ROI_Promedio - (
                SELECT
                    AVG(roi_mensual.ROI_Promedio)
                FROM
                    roi_mensual
            )
        )
    ) / (
        (
            SELECT
                STD (volatilidad_mensual.Volatilidad_Media)
            FROM
                volatilidad_mensual
        ) * (
            SELECT
                STD (roi_mensual.ROI_Promedio)
            FROM
                roi_mensual
        )
    ) AS Correlacion,
    (
        (r.ROI_Promedio - 3.0) / (
            SELECT
                STD (roi_mensual.ROI_Promedio)
            FROM
                roi_mensual
        )
    ) AS Ratio_Sharpe
FROM
    volatilidad_mensual v
    JOIN roi_mensual r ON v.Año = r.Año
    AND v.Mes = r.Mes;


-- SOLO LAS VISTAS SIN ETL
CREATE VIEW vw_inversiones AS
SELECT 
    ID,
    Nombre,
    Moneda_ID,
    Monto_Inicial
FROM inversiones;

CREATE VIEW vw_tasas_cambio AS
SELECT 
    Moneda_ID,
    Tasa
FROM tasas_cambio;

CREATE VIEW vw_gastos_inversion AS
SELECT 
    Inversion_ID,
    Monto,
    ID
FROM gastos_inversion;

CREATE VIEW vw_historico_gastos AS
SELECT 
    Inversion_ID,
    Monto,
    ID
FROM historico_gastos;

CREATE VIEW vw_rendimientos AS
SELECT 
    Inversion_ID,
    Rendimiento_Porcentual,
    Rendimiento_Monetario,
    Fecha
FROM rendimientos;

CREATE VIEW vw_reportes_riesgo AS
SELECT 
    Portafolio_ID,
    Fecha,
    Riesgo_Total,
    Volatilidad
FROM reportes_riesgo;

CREATE VIEW vw_portafolios AS
SELECT 
    ID,
    Nombre
FROM portafolios;

CREATE VIEW vw_diversificacion AS
SELECT 
    Portafolio_ID,
    Inversion_ID,
    Porcentaje_Asignado
FROM diversificacion;

CREATE VIEW vw_mercado AS
SELECT 
    Fecha,
    Tipo_Indice,
    Volatilidad
FROM mercado;


