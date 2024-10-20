/*各站點進站人數最多的一筆*/

SELECT name,date,gateincomingcnt
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE (stationname,gateincomingcnt) IN (
	SELECT stationname AS 站名,MAX(gateincomingcnt) AS 最多人數
	FROM stations JOIN station_in_out ON stationcode = stacode
	GROUP BY 站名	
)
ORDER BY gateincomingcnt;

# 子查詢
SELECT stationname AS 站名,MAX(gateincomingcnt) AS 最多人數
FROM stations JOIN station_in_out ON stationcode = stacode
GROUP BY 站名;