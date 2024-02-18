Drop table employees
--create table
CREATE TABLE employees (
  emp_no VARCHAR(30) NOT NULL,
  emp_title_id VARCHAR(30) NOT NULL,
  birth_date VARCHAR(30) NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(30) NOT NULL,
  hire_date VARCHAR(30) NOT NULL
);

select * from employees