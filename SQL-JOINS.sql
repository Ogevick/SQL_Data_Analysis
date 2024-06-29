SELECT *
FROM students AS s
JOIN projects AS p
ON s.student_id = p.student_id;

SELECT name, title
FROM students AS s
JOIN projects AS p
ON s.student_id = p.student_id;

SELECT s.name, p.title
FROM students AS s
INNER JOIN projects AS p
ON s.student_id = p.student_id;

SELECT *
FROM students AS s
LEFT JOIN projects AS p
ON s.student_id = p.student_id;

SELECT *
FROM students AS s
RIGHT JOIN projects AS p
ON s.student_id = p.student_id;

