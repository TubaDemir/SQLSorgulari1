
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

  --Sorgularýmýzda alt toplamalar olusturabilmek yani özet veri kümesi elde etmek için Group By ile birlikte CUBE ve ROLLUP kullanabiliriz.

  --COALESCE ile department kolonunda null olan yerlere All Deparments yazýlacaktýr.
   SELECT coalesce (department, 'All Departments') AS Department,
  sum(salary) as Salary_Sum
  FROM employee
  GROUP BY ROLLUP (department)

  --ROLLUP ile verilen tüm sütun deðerlerinin oluþturduðu her hiyerarþi için bir ara toplam gösteren sonuç kümesi oluþturur.
    SELECT
  coalesce (department, 'All Departments') AS Department,
  coalesce (gender,'All Genders') AS Gender,
  sum(salary) as Salary_Sum
  FROM employee
  GROUP BY ROLLUP (department, gender)

  --CUBE ile verilen tüm sütun deðerlerinin birbirleri ile olan tüm kombinasyonlarý için toplamlarý gösteren bir sonuç kümesi oluþturur.
    SELECT
  coalesce (department, 'All Departments') AS Department,
  coalesce (gender,'All Genders') AS Gender,
  sum(salary) as Salary_Sum
  FROM employee
  GROUP BY CUBE (department, gender)