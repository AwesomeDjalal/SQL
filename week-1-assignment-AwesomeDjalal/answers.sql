-- Part 2: Create Database
CREATE DATABASE hospital_db;

-- Select database
USE hospital_db;

-- Create Patient Table
CREATE TABLE patients(
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(255),
    language VARCHAR(255) NOT NULL
);

-- Create Provider Table
CREATE TABLE providers(
    provider_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    provider_speciality VARCHAR(255) NOT NULL,
    email_address VARCHAR(255),
    phone_number VARCHAR(255),
    date_joined DATE NOT NULL
);

-- Create Visits Table
CREATE TABLE visits(
    visit_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    provider_id INT NOT NULL,
    date_of_visit DATE NOT NULL,
	date_scheduled DATE NOT NULL,
    visit_department_id INT NOT NULL,
    visit_type VARCHAR(255),
    blood_pressure_systolic INT,
    blood_pressure_diastolic DECIMAL,
    pulse DECIMAL,
    visit_status VARCHAR(255)
);

-- Create Ed visits Table
CREATE TABLE ed_visits(
    ed_visit_id INT PRIMARY KEY AUTO_INCREMENT,
    visit_id INT NOT NULL,
    patient_id INT NOT NULL,
    acuity INT NOT NULL,
    reason_for_visit VARCHAR(255),
    disposition VARCHAR(255)
);

-- Create Admissions Table
CREATE TABLE admissions(
    admission_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    admission_date DATE NOT NULL,
    discharge_date DATE NOT NULL,
    discharge_disposition VARCHAR(255),
    service VARCHAR(255),
    primary_diagnosis VARCHAR(255)
);

-- Create Discharges Table
CREATE TABLE discharges(
    discharge_id INT PRIMARY KEY AUTO_INCREMENT,
    admission_id INT NOT NULL,
    patient_id DATE NOT NULL,
    discharge_date DATE NOT NULL,
    discharge_disposition VARCHAR(255)
);