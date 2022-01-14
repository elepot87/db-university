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