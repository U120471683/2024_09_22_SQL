/*1. 全省各站點2022年進站總人數 */

SELECT stationname as 站名, sum(gateincomingcnt) as 進站總人數
FROM station_in_out in_out JOIN stations s on in_out.stacode=s.stationcode
WHERE EXTRACT(YEAR from date)='2022'
GROUP BY stationname
ORDER BY SUM(gateincomingcnt) DESC;
