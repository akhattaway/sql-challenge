﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/l9T8dw
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).
--drop tables in this order for dependencies
Drop Table "dept_emp"
Drop Table "dept_manager"
Drop Table "salaries"
Drop Table "employees"
Drop Table "titles"
Drop Table "departments"

--- Create Schema
CREATE TABLE "departments" (
    "dept_no" varchar (25)   NOT NULL,
    "dept_name" varchar (50) NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" varchar (25)  NOT NULL,
    "dept_no" varchar (25)  NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar (25)  NOT NULL,
    "emp_no" varchar (25)  NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" varchar (25)  NOT NULL,
    "emp_title_id" varchar (25)  NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar (50)  NOT NULL,
    "last_name" varchar (50)  NOT NULL,
    "sex" varchar (50)  NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" varchar (25)  NOT NULL,
    "salary" money   NOT NULL
);

CREATE TABLE "titles" (
    "title_id" varchar (25)  NOT NULL,
    "title" varchar (50)  NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

