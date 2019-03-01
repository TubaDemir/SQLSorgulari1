
CREATE TABLE employee
  (
      id INT PRIMARY KEY,
      name VARCHAR(50) NOT NULL,
      gender VARCHAR(50) NOT NULL,
      salary INT NOT NULL,
      department VARCHAR(50) NOT NULL
   )

   INSERT INTO employee
  VALUES
  (1, 'David', 'Male', 5000, 'Sales'),
  (2, 'Jim', 'Female', 6000, 'HR'),
  (3, 'Kate', 'Female', 7500, 'IT'),
  (4, 'Will', 'Male', 6500, 'Marketing'),
  (5, 'Shane', 'Female', 5500, 'Finance'),
  (6, 'Shed', 'Male', 8000, 'Sales'),
  (7, 'Vik', 'Male', 7200, 'HR'),
  (8, 'Vince', 'Female', 6600, 'IT'),
  (9, 'Jane', 'Female', 5400, 'Marketing'),
  (10, 'Laura', 'Female', 6300, 'Finance'),
  (11, 'Mac', 'Male', 5700, 'Sales'),
  (12, 'Pat', 'Male', 7000, 'HR'),
  (13, 'Julie', 'Female', 7100, 'IT'),
  (14, 'Elice', 'Female', 6800,'Marketing'),
  (15, 'Wayne', 'Male', 5000, 'Finance')

   SELECT department, sum(salary) as Salary_Sum
  FROM employee GROUP BY department

  --Sorgular�m�zda alt toplamalar olusturabilmek yani �zet veri k�mesi elde etmek i�in Group By ile birlikte CUBE ve ROLLUP kullanabiliriz.

  --COALESCE ile department kolonunda null olan yerlere All Deparments yaz�lacakt�r.
   SELECT coalesce (department, 'All Departments') AS Department,
  sum(salary) as Salary_Sum
  FROM employee
  GROUP BY ROLLUP (department)

  --ROLLUP ile verilen t�m s�tun de�erlerinin olu�turdu�u her hiyerar�i i�in bir ara toplam g�steren sonu� k�mesi olu�turur.
    SELECT
  coalesce (department, 'All Departments') AS Department,
  coalesce (gender,'All Genders') AS Gender,
  sum(salary) as Salary_Sum
  FROM employee
  GROUP BY ROLLUP (department, gender)

  --CUBE ile verilen t�m s�tun de�erlerinin birbirleri ile olan t�m kombinasyonlar� i�in toplamlar� g�steren bir sonu� k�mesi olu�turur.
    SELECT
  coalesce (department, 'All Departments') AS Department,
  coalesce (gender,'All Genders') AS Gender,
  sum(salary) as Salary_Sum
  FROM employee
  GROUP BY CUBE (department, gender)