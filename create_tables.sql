-- Create Tables Script

DROP TABLE Office CASCADE CONSTRAINTS;
CREATE TABLE Office (
  office_ID	INT,
  phone_number   CHAR(10),
  address VARCHAR(32),
  employee_ID	INT,
  CONSTRAINTS Office_PK PRIMARY KEY (office_ID)
);

DROP TABLE Employee CASCADE CONSTRAINTS;
CREATE TABLE Employee (
  employee_ID	INT,
  office_ID	INT,
  Fname VARCHAR2(15) NOT NULL,
  Lname VARCHAR2(15) NOT NULL,
  sex CHAR(1),
  phone_number   CHAR(10),
  title VARCHAR(32),
  CONSTRAINTS Employee_PK PRIMARY KEY (employee_ID)
);
										DROP TABLE driver CASCADE CONSTRAINTS;
CREATE TABLE driver (
  driver_ID INT,
  Fname VARCHAR2(15) NOT NULL,
  Lname VARCHAR2(15) NOT NULL,
  sex CHAR(1),
  dob CHAR(8),
  location VARCHAR(20),
  CONSTRAINTS driver_PK PRIMARY KEY (driver_ID)
);

DROP TABLE taxi CASCADE CONSTRAINTS;
CREATE TABLE taxi (
  taxi_ID	INT,
  employee_ID INT,
  model VARCHAR2(15),
  make VARCHAR2(15),
  color VARCHAR(10),
  registration_type VARCHAR(2),
  CONSTRAINTS taxi_PK PRIMARY KEY (taxi_ID)
);

DROP TABLE Private_Client;
CREATE TABLE Private_Client(
  private_client_ID INT NOT NULL,
  first_name VARCHAR2(15) NOT NULL,
  last_name VARCHAR2(15) NOT NULL,
  address VARCHAR2(63) NOT NULL,
  phone_number NUMBER(10) NOT NULL,
  CONSTRAINTS Private_Client_PK PRIMARY KEY(private_client_ID)
);

DROP TABLE Business_Client;
CREATE TABLE Business_Client(
  bus_client_ID INT NOT NULL, 
  first_name VARCHAR2(15) NOT NULL,
  last_name VARCHAR2(15) NOT NULL,
  address VARCHAR2(63) NOT NULL,
  phone_number NUMBER(10) NOT NULL,
  contract_ID INT,
  CONSTRAINT Business_Client_PK PRIMARY KEY(bus_client_ID)
);

DROP TABLE Contract CASCADE CONSTRAINTS;
CREATE TABLE Contract(
  contract_ID INT NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE,
  fixed_fee NUMBER(10, 2) NOT NULL,
  no_of_jobs NUMBER(10) NOT NULL,
  office_ID INT NOT NULL,
  jobs_finished NUMBER(10),
  CONSTRAINTS Contract_PK PRIMARY KEY (contract_ID)
);

DROP TABLE Job CASCADE CONSTRAINTS;
CREATE TABLE Job(
  job_ID INT NOT NULL,
  private_client_ID INT,
  employee_ID INT NOT NULL,
  pickup_location VARCHAR2(63) NOT NULL,
  pickup_date DATE NOT NULL,
  drop_off_location VARCHAR2(63),
  drop_off_date DATE NOT NULL,
  contract_ID INT,
  miles_driven INT,
  CONSTRAINTS Job_PK PRIMARY KEY (job_ID)
);

DROP TABLE Job_Status CASCADE CONSTRAINTS;
CREATE TABLE Job_Status(
  job_ID INT NOT NULL,
  completed char(1) NOT NULL,
  notes VARCHAR2(500),
  CONSTRAINTS Job_Status_PK PRIMARY KEY (job_ID)
);

