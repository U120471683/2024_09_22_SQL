/*進站人數最多的一筆*/

SELECT stationname AS 站名,gateincomingcnt AS 進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE gateincomingcnt = (
	SELECT MAX(gateincomingcnt)
	FROM station_in_out
);