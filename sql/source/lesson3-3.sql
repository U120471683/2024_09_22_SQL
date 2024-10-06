SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM tra_station_code
WHERE code = '1001';

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM tra_station_code
WHERE code = '1001' OR code = '1003';

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM tra_station_code
WHERE code IN  ('1001' ,  '1003');

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM tra_station_code
WHERE code = '1001' OR name='八堵';

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM tra_station_code
/*WHERE name= '基隆'; */
WHERE name LIKE '台_';

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM tra_station_code
/*WHERE name= '基隆'; */
WHERE name LIKE '台%';

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM tra_station_code
/*WHERE name= '基隆'; */
WHERE name LIKE '%港';

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM tra_station_code
/*WHERE name= '基隆'; */
WHERE e_name ILIKE '%p%';

SELECT id as 序號,code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM tra_station_code
/*WHERE name= '基隆'; */
WHERE id<=20 AND id>=10;

