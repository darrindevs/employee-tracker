DROP DATABASE IF EXISTS DM_DB;

CREATE DATABASE DM_DB;

USE DM_DB;

CREATE TABLE depts (
    dept_ID INT(6) NOT NULL AUTO_INCREMENT,
    dept_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (dept_ID)
);

CREATE TABLE roles (
    role_ID INT(6) NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(8, 2) NOT NULL,
    dept_ID INT(6) NOT NULL,
    PRIMARY KEY (role_ID),
    FOREIGN KEY (dept_ID) REFERENCES depts(dept_ID)
);


CREATE TABLE employees (
    employee_ID INT(6) NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_ID INT(6) NOT NULL,
    manager_ID INT(6),
    PRIMARY KEY (employee_ID),
    FOREIGN KEY (role_ID) REFERENCES roles(role_ID),
    FOREIGN KEY (manager_ID) REFERENCES roles(role_ID)
);


