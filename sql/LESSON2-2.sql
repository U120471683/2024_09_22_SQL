DROP TABLE IF EXISTS hospital;

CREATE TABLE IF NOT EXISTS hospital (
    id SERIAL PRIMARY KEY,
    state VARCHAR(5) NOT NULL,
	name VARCHAR(30) NOT NULL UNIQUE,
	phone VARCHAR(15),
	ext VARCHAR(7),
	contact VARCHAR(7),
	address VARCHAR(50)
);
/*
id -> 主鍵,自動遞增值
code -> 字串 -> 不可以重複 -> 不可以是空的
name -> 字串 -> 不可以重覆
e_name -> 字串 -> 不可以重覆 */

CREATE TABLE IF NOT EXISTS TRA_station_code (
    id SERIAL PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE,
	name VARCHAR(20) UNIQUE,
	e_name VARCHAR(50) UNIQUE
	
);