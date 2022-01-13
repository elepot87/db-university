-- 1. Selezionare tutti gli studenti nati nel 1990 (160)

SELECT * 
FROM `students` 
WHERE `date_of_birth` BETWEEN '1990-01-01' AND '1990-12-31';

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti (479)

SELECT *
FROM `courses` 
WHERE `cfu` > 10;

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni

SELECT *
FROM `students` 
WHERE `date_of_birth` < DATE_SUB(CURRENT_DATE(), INTERVAL 30 YEAR)
ORDER BY `date_of_birth` DESC;

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT * 
FROM `courses`
WHERE `period` = 'I semestre'
AND `year` = 1;