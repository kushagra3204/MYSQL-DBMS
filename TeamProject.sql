show databases;
create database Customer_Service;
use Customer_Service;
show tables;

CREATE TABLE User (
  user_id VARCHAR(10) NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(50) NOT NULL,
  address VARCHAR(200) NOT NULL
);
desc user;


CREATE TABLE User_Phone_Number (
  phone_no_id VARCHAR(10)PRIMARY KEY,
  user_id VARCHAR(10),
  phone_no VARCHAR(20),
  FOREIGN KEY (user_id) REFERENCES User(user_id)
);
desc User_Phone_Number;

CREATE TABLE Employee (
  employee_id VARCHAR(10) NOT NULL,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(50) NOT NULL,
  department_id VARCHAR(10) NOT NULL,
  phone_no_id VARCHAR(10) NOT NULL,
  PRIMARY KEY (employee_id),
  FOREIGN KEY (department_id) REFERENCES Department(department_id)
);
desc Employee;

CREATE TABLE Department (
  department_id VARCHAR(10) PRIMARY KEY,
  name VARCHAR(50)
  );
desc Department;

CREATE TABLE Complaint (
    complaint_id VARCHAR(10) PRIMARY KEY,
    subject VARCHAR(255),
    description VARCHAR(300),
    status VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    user_id VARCHAR(10),
    handler_id VARCHAR(10),
    category_id VARCHAR(10),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (handler_id) REFERENCES Handler(handler_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);
desc Complaint;

CREATE TABLE Complaint_Solved (
  solved_id VARCHAR(10) PRIMARY KEY,
  complaint_id VARCHAR(10),
  employee_id VARCHAR(10),
  date_solved DATE,
  status VARCHAR(50),
  FOREIGN KEY (complaint_id) REFERENCES Complaint(complaint_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);
desc Complaint_Solved;

CREATE TABLE Handler (
  handler_id VARCHAR(10),
  name VARCHAR(50),
  email VARCHAR(100),
  password VARCHAR(50),
  employee_id VARCHAR(10) NOT NULL,
  PRIMARY KEY (handler_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);
desc Handler;

CREATE TABLE Category(
  category_id VARCHAR(10) PRIMARY KEY,
  name VARCHAR(50)
  );
desc category;

CREATE TABLE Sub_Category(
  sub_category_id VARCHAR(10) PRIMARY KEY,
  name VARCHAR(50),
  category_id VARCHAR(10),
  FOREIGN KEY (category_id) REFERENCES Category(category_id)
  );
  desc sub_category;
  
  CREATE TABLE Feedback (
  feedback_id VARCHAR(10) PRIMARY KEY,
  complaint_id VARCHAR(10),
  handler_id VARCHAR(10),
  feedback_desc VARCHAR(300),
  FOREIGN KEY (complaint_id) REFERENCES Complaint(complaint_id),
  FOREIGN KEY (handler_id) REFERENCES Handler(handler_id)
);
desc Feedback;