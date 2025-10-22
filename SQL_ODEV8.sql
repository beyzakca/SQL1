INSERT INTO employee (id, name, birthday, email)
VALUES 
(1, 'Ayşe', '2001-09-09', 'ayse@gmail.com'),
(2, 'Selin', '2001-08-08', 'selin@gmail.com'),
(3, 'Beste', '2001-07-07', 'beste@gmail.com'),
(4, 'Ada', '2001-06-06', 'ada@gmail.com'),
(5, 'Zeynep', '2001-05-05', 'zeynep@gmail.com'); 


UPDATE employee
SET name = 'Defne'
WHERE id = 1;

UPDATE employee
SET email = 'defne@example.com'
WHERE name = 'Defne';

UPDATE employee
SET birthday = '2001-02-02'
WHERE name = 'Defne'; 

DELETE FROM employee
WHERE id = 1;

DELETE FROM employee
WHERE name = 'Defne';

DELETE FROM employee
WHERE birthday < '2001-02-02'; 

SELECT * FROM EMPLOYEE
