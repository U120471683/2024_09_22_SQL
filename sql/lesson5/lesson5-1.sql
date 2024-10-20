/*1. 全省各站點2022年進站總人數 */

SELECT stationname as 站名, sum(gateincomingcnt) as 進站總人數
FROM station_in_out in_out JOIN stations s on in_out.stacode=s.stationcode
WHERE EXTRACT(YEAR from date)='2022'
GROUP BY stationname
ORDER BY SUM(gateincomingcnt) DESC;

/*2. 全省各站點2022年進站總人數大於5佰萬人的站點 */

SELECT stationname as 站名, sum(gateincomingcnt) as 進站總人數
FROM station_in_out in_out JOIN stations s on in_out.stacode=s.stationcode
WHERE EXTRACT(YEAR from date)='2022'
GROUP BY stationname
HAVING SUM(gateincomingcnt) > 5000000
ORDER BY SUM(gateincomingcnt) DESC;



/*3. 基隆火車站2020年,每月份進站人數 */

SELECT stationname as 站別, EXTRACT(MONTH from date) as 月別, sum(gateincomingcnt) as 進站總人數
FROM station_in_out in_out JOIN stations s on in_out.stacode=s.stationcode
WHERE EXTRACT(YEAR from date)='2020' AND stationname='基隆'
GROUP BY stationname, 月別
ORDER BY 月別;


/*4. 基隆火車站2020年,每月份進站人數,由多至少 */

SELECT stationname as 站別, EXTRACT(MONTH from date) as 月別, sum(gateincomingcnt) as 進站總人數
FROM station_in_out in_out JOIN stations s on in_out.stacode=s.stationcode
WHERE stationname='基隆' and EXTRACT(YEAR from date)='2020'
GROUP BY stationname, 月別
ORDER BY 進站總人數 DESC;


/*5. 基隆火車站2020,2021,2022,每年進站人數 */

SELECT stationname as 站別, EXTRACT(year from date) as 年度, sum(gateincomingcnt) as 進站總人數
FROM station_in_out in_out JOIN stations s on in_out.stacode=s.stationcode
WHERE stationname='基隆' and EXTRACT(YEAR from date) in('2020','2021','2022')
GROUP BY stationname, 年度
ORDER BY 年度;

/*6. 基隆火車站,臺北火車站2020,2021,2022,每年進站人數 */

SELECT stationname as 站別, EXTRACT(year from date) as 年度, sum(gateincomingcnt) as 進站總人數
FROM station_in_out in_out JOIN stations s on in_out.stacode=s.stationcode
WHERE stationname in('臺北','基隆') and EXTRACT(YEAR from date) in('2020','2021','2022')
GROUP BY 站別, 年度
ORDER BY 站別;

/*7. 請使用SubQuery 

   7.1 進站人數最多的一筆*/


SELECT stationname as 站別, date as 日期, gateincomingcnt as 進站人數
FROM stations s JOIN station_in_out in_out on in_out.stacode=s.stationcode
WHERE gateincomingcnt=(
	SELECT MAX(gateincomingcnt)
	FROM station_in_out
);


  /*7.2 各站點進站人數最多的一筆 */
SELECT stationname AS 站名,
	   date AS 日期,
	   gateincomingcnt AS 進站人數最多
FROM station_in_out in_out JOIN stations s ON in_out.stacode = s.stationcode
WHERE (stacode,gateincomingcnt) IN (
		SELECT stacode, MAX(gateincomingcnt)
		FROM station_in_out
		GROUP BY stacode)	
ORDER BY gateincomingcnt DESC ; 

