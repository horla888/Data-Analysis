CREATE database Hospital;
use Hospital;

CREATE Table Patient_Demo (
patient_id int primary key,
full_name varchar(60),
age_group varchar(10),
gender char(10),
marital_status char(10),
blood_group varchar(2),
occupation varchar(20),
Education_level varchar(20),
Residence varchar(60),
insurance_status varchar(20));

ALTER TABLE Patient_Demo 
MODIFY patient_id INT AUTO_INCREMENT;


CREATE Table Service_table (
service_id int primary key auto_increment,
service_name varchar(20) NOT NULL,
category VARCHAR(20) NOT NULL,
service_type VARCHAR(20) NOT NULL);

CREATE Table Doctor_demo (
Doctor_id int primary key,
Doctor_name varchar(30),
Gender varchar(10),
Department varchar(30),
Specialty varchar(60),
Years_of_experience int,
Employment_type varchar(20),
Qualification varchar(20));

CREATE Table Payment (
payment_id int primary key auto_increment,
patient_id int REFERENCES Patient_Demo ON delete CASCADE on update CASCADE,
payment_method varchar(10),
insurance_provider varchar(20),
payment_status varchar(30),
discount_type varchar(20));

DROP TABLE Payment;