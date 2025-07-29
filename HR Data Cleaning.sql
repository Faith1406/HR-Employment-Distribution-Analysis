CREATE DATABASE projects;
USE projects;
SELECT 
    *
FROM
    projects;

ALTER TABLE hr
CHANGE COLUMN ï»¿id emp_no VARCHAR(20) NULL;

DESCRIBE hr;
SELECT 
    birthdate
FROM
    hr;
  
    
UPDATE hr 
SET 
    birthdate = CASE
        WHEN
            birthdate LIKE '%/%'
        THEN
            DATE_FORMAT(STR_TO_DATE(birthdate, '%m/%d/%Y'),
                    '%Y-%m-%d')
        WHEN
            birthdate LIKE '%-%'
        THEN
            DATE_FORMAT(STR_TO_DATE(birthdate, '%m-%d-%Y'),
                    '%Y-%m-%d')
        ELSE NULL
    END;

 ALTER TABLE hr
 MODIFY COLUMN birthdate DATE;
  
UPDATE hr 
SET 
    hire_date = CASE
        WHEN
            hire_date LIKE '%/%'
        THEN
            DATE_FORMAT(STR_TO_DATE(hire_date, '%m/%d/%Y'),
                    '%Y-%m-%d')
        WHEN
            hire_date LIKE '%-%'
        THEN
            DATE_FORMAT(STR_TO_DATE(hire_date, '%m-%d-%Y'),
                    '%Y-%m-%d')
        ELSE NULL
    END;

UPDATE hr
SET termdate= date(str_to_date(termdate,'%Y-%m-%d %H:%m:%s UTC'))
WHERE termdate IS NOT NULL and termdate !='';

UPDATE hr
SET termdate = NULL
WHERE termdate = '';

ALTER TABLE hr 
MODIFY COLUMN hire_date DATE;

ALTER TABLE hr 
MODIFY COLUMN termdate DATE;

SELECT termdate FROM
hr;
ALTER TABLE hr
ADD COLUMN age INT;

UPDATE hr
SET age= timestampdiff(YEAR,birthdate,CURDATE());

SELECT 
    MIN(age) AS youngest,
    MAX(age) AS oldest
FROM
    hr;

SELECT termdate
FROM hr;

SELECT @@sql_mode;
SET @@sql_mode = '';

UPDATE hr
SET termdate = '0000-00-00'
WHERE termdate IS NULL;

SELECT COUNT(*) 
FROM hr 
WHERE age < 18;
