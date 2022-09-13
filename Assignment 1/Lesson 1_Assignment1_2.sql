DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;
CREATE TABLE department(
department_id					INT,
department_name					VARCHAR(50)
);
CREATE TABLE `position`(
position_id						INT,
position_name					VARCHAR(50)
);
CREATE TABLE `account`(
account_id						INT,
email							VARCHAR(50),
username						VARCHAR(50),
fullname						VARCHAR(50),
department_id					INT,
position_id						INT,
create_date						DATE
);
CREATE TABLE group_table(
group_id						INT,
group_name						VARCHAR(50),
creator_id						INT,
create_date						DATE
);
CREATE TABLE groupaccount(
group_id						INT,
account_id						INT,
join_date						DATE
);
CREATE TABLE TypeQuestion(
type_id							INT,
type_name						VARCHAR(50)
);
CREATE TABLE Question(
question_id						INT,
content							VARCHAR(50),
category_id						INT,
type_id							INT,
creator_id						INT,
create_date						DATE
);
CREATE TABLE Answer(
answer_id						INT,
content							VARCHAR(50),
question_id						INT,
isCorrect						BOOLEAN
);
CREATE TABLE Exam(
exam_id							INT,
`code`							INT,
title							VARCHAR(50),
category_id						INT,
duration						TIME,
creator_id						INT,
create_date						DATE
);
CREATE TABLE ExamQuestion(
exam_id							INT,
question_id						INT
);