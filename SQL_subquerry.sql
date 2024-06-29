SELECT *
FROM students 
WHERE age > (SELECT ROUND (AVG(age)) AS aveg_age FROM students);

SELECT *
FROM students 
WHERE grade < (SELECT ROUND (AVG(grade)) AS aveg_grade FROM students);

SELECT *
FROM students 
WHERE grade < (SELECT (AVG(grade)) AS aveg_grade FROM students);

SELECT *
FROM students 
WHERE grade < (SELECT ROUND (AVG(grade), 2) AS aveg_grade FROM students);

SELECT
department,
COUNT(*) AS student_cnt
FROM students
GROUP BY department;

SELECT*
FROM (SELECT
department,
COUNT(*) AS student_cnt
FROM students
GROUP BY department);

SELECT AVG(student_cnt), MAX(student_cnt), MIN(student_cnt)
FROM (SELECT
department,
COUNT(*) AS student_cnt
FROM students
GROUP BY department);