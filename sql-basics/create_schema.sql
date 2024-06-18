-- Schema
DROP TABLE IF EXISTS students;
CREATE TABLE students (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  birthdate    date NOT NULL,
  address_id   integer
);

DROP TABLE IF EXISTS addresses;
CREATE TABLE addresses (
  id           serial PRIMARY KEY,
  line_1       varchar(255),
  city         varchar(20),
  state        character(20),
  zipcode      integer
);

DROP TABLE IF EXISTS classes;
CREATE TABLE classes (
  id           serial PRIMARY KEY,
  name         varchar(50),
  credits      integer
);

DROP TABLE IF EXISTS enrollments;
CREATE TABLE enrollments (
  id           serial PRIMARY KEY,
  student_id   integer,
  class_id     integer,
  grade        character(1)
);