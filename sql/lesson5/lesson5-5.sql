/*基隆火車站2020,2021,2022,每年進站人數*/
SELECT stationname AS 站名, EXTRACT(YEAR FROM date) as 年份,SUM(gateincomingcnt) AS 當年總進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE EXTRACT(YEAR FROM date) IN (2020,2021,2022) AND stationname='基隆'
GROUP BY 站名,年份;