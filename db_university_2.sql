-- 1.	Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(`id`) AS `numero_iscritti`, YEAR(`enrolment_date`) AS `anno`
FROM `students` 
GROUP BY YEAR(`enrolment_date`);

-- 2.	Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(`id`) AS `num_insegnanti`, `office_address` AS `indirizzo_ufficio`
FROM `teachers` 
GROUP BY `office_address`;

-- 3.	Calcolare la media dei voti di ogni appello d'esame
SELECT ROUND(AVG(`vote`), 0) AS `media_voto`, `exam_id` AS `esame`
FROM `exam_student`
GROUP BY `exam_id`;

-- 4.	Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(`id`) AS `numero_corsi_laurea`, `department_id` AS `dipartimento`
FROM `degrees` 
GROUP BY `dipartimento`;


-- 1.	Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT * 
FROM `students` 
INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia";

-- 2.	Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT *
FROM `degrees` 
INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name`= 'Dipartimento di Neuroscienze';

-- 3.	Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT * 
FROM `courses` 
INNER JOIN `course_teacher` ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers` ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `teachers`.`id`= 44
;

-- 4.	Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
