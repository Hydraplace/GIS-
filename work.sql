CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
--Create Table
CREATE TABLE MAPS (name varchar, geom geometry);
INSERT INTO MAPS VALUES
	('Leavey','POINT(-118.2830373,34.0216697)'),
	('Doheny', 'POINT(-118.2838143,34.020195)'),
	('Accounting', 'POINT(-118.2855577,34.0192106)'),
	('Hoose', 'POINT(-118.2867697,34.0188799)'),
	('ScienceEng', 'POINT(-118.2888532,34.0196468)'),
	('HelenTopping', 'POINT(-118.2878845,34.0191264)'),
	('Founders', 'POINT(-118.2838323,34.0225646)'),
	('Generations', 'POINT(-118.2832249,34.0222982)'),
	('PrentissMemorial', 'POINT(-118.284551,34.0205849)'),
	('PatsyForrest', 'POINT(-118.285167,34.0203086)'),
	('DouglasFairBanksSr', 'POINT(-118.2864936,34.0234537)'),
	('NearUSCFisher', 'POINT(-118.2877165,34.0186318)'),
	('Me', 'POINT(-118.2826997,34.030622)');

SELECT name, ST_AsText(geom) FROM MAPS;

--Convex Hull
SELECT ST_AsText(ST_ConvexHull(ST_Collect(geom))) FROM MAPS;

SELECT name,ST_Astext(geom) as location,ST_Distance(geom,'POINT(-118.2826997 34.030622)') as distance 
FROM Maps
WHERE ST_Distance(geom,'POINT(-118.2826997 34.030622)') = (SELECT MIN(ST_Distance(geom,'POINT(-118.2826997 34.030622)')) 
FROM Maps 
WHERE NOT ST_Equals(geom,'POINT(-118.2826997 34.030622)'))





CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
--Create Table
CREATE TABLE MAPS (name varchar, geom geometry);
INSERT INTO MAPS VALUES
	('Leavey','POINT(-118.2830373 34.0216697)'),
	('Doheny', 'POINT(-118.2838143 34.020195)'),
	('Accounting', 'POINT(-118.2855577 34.0192106)'),
	('Hoose', 'POINT(-118.2867697 34.0188799)'),
	('ScienceEng', 'POINT(-118.2888532 34.0196468)'),
	('HelenTopping', 'POINT(-118.2878845 34.0191264)'),
	('F1', 'POINT(-118.2838323 34.0225646)'),
	('F2', 'POINT(-118.2832249 34.0222982)'),
	('F3', 'POINT(-118.284551 34.0205849)'),
	('F4', 'POINT(-118.285167 34.0203086)'),
	('F5', 'POINT(-118.2864936 34.0234537)'),
	('F6', 'POINT(-118.2877165 34.0186318)'),
	('Me', 'POINT(-118.2826997 34.030622)');
	
SELECT name, ST_AsText(geom) FROM MAPS;

--Convex Hull
SELECT ST_AsText(ST_ConvexHull(ST_Collect(geom))) FROM MAPS;