DROP DATABASE IF EXISTS dmDB;

CREATE DATABASE dmDB;

USE dmDB;

CREATE TABLE depts (
    id INT(10) NOT NULL AUTO_INCREMENT,
    dept_id INT(10) NULL,
    dept_name VARCHAR(30) NULL,
    PRIMARY KEY (id)
);

CREATE TABLE roles (
    id INT(10) NOT NULL AUTO_INCREMENT,
    role_id INT(10) NULL,
    title VARCHAR(30) NULL,
    salary DECIMAL(8, 2) NULL,
    dept VARCHAR(30) NULL,
    PRIMARY KEY (id)
);


CREATE TABLE employees (
    id INT(10) NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    /*employee_id INT(10) NULL,*/
    role_id INT(10) NULL,
    role_title VARCHAR(30) NULL,
    dept VARCHAR(30) NULL,
    /*manager_id INT(10) NULL,*/
    manager_name VARCHAR(30) NULL,
    PRIMARY KEY (id)
);


