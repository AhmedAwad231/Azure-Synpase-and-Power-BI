CREATE VIEW vu_top_contries
as
SELECT 
   top (10) 
   country_region,
   sum (CAST (confirmed AS BIGINT) /1000 ) as total_confirmed,
   sum (CAST (deaths AS BIGINT) /1000 ) as total_deaths
FROM COVID_INFO
where country_region != 'Worldwide'
GROUP by country_region
ORDER BY total_confirmed desc

SELECT * from vu_top_contries