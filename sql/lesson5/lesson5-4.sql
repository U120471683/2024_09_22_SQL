/*基隆火車站2020年,每月份進站人數,由多至少*/
SELECT stationname AS 站名, TO_CHAR(date, 'YYYY-MM') AS 日期,SUM(gateincomingcnt) AS 當月總進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
/*WHERE date BETWEEN '2022-01-01' AND '2022-12-31';*/
WHERE EXTRACT(YEAR FROM date) = 2020 AND stationname='基隆'
GROUP BY 站名,日期
ORDER BY SUM(gateincomingcnt) DESC;