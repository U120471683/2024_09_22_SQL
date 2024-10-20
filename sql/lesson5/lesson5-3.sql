/*基隆火車站2020年,每月份進站人數*/
SELECT stationname AS 站名, date AS 日期, gateincomingcnt AS 每日進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
/*WHERE date BETWEEN '2022-01-01' AND '2022-12-31';*/
WHERE EXTRACT(YEAR FROM date) = 2020 AND stationname='基隆';