-- Insert Data Script
-- Defer 
SET CONSTRAINTS ALL DEFERRED;

INSERT INTO Office(office_ID,phone_number,address,employee_ID)VALUES('1','0123456789','123 Main st New York NY', '1');
INSERT INTO Office(office_ID,phone_number,address,employee_ID)VALUES('2','1234567891','456 Ford st Los Angeles CA', '2');
INSERT INTO Office(office_ID,phone_number,address,employee_ID)VALUES('3','2345678911','789 Lincoln st Pittsburgh PA', '3');
INSERT INTO Office(office_ID,phone_number,address,employee_ID)VALUES('4','3456789123','123 Bush st Seattle WA', '4');
INSERT INTO Office(office_ID,phone_number,address,employee_ID)VALUES('5','4567891234','456 Chevy st Sacramento CA', '5');


INSERT INTO Employee(employee_ID,office_ID,Fname,Lname,sex,phone_number,title)VALUES('1','1','John','Smith','M','0123456789', 'Manager');
INSERT INTO Employee(employee_ID,office_ID,Fname,Lname,sex,phone_number,title)VALUES('2','1','Jane','Doe','F','0123456789', 'Janitor');
INSERT INTO Employee(employee_ID,office_ID,Fname,Lname,sex,phone_number,title)VALUES('3','2','Jorge','Ruiz','M','0123456789', 'Manager');
INSERT INTO Employee(employee_ID,office_ID,Fname,Lname,sex,phone_number,title)VALUES('4','3','Jacob','Shooster','M','0123456789', 'Manager');
INSERT INTO Employee(employee_ID,office_ID,Fname,Lname,sex,phone_number,title)VALUES('5','2','Justin','Jones','M','0123456789', 'Secretary');
INSERT INTO Employee(employee_ID,office_ID,Fname,Lname,sex,phone_number,title)VALUES('6','4','PK','Subban','M','0123456789', 'Manager');
INSERT INTO Employee(employee_ID,office_ID,Fname,Lname,sex,phone_number,title)VALUES('7','5','Bridgette','Jones','F','0123456789', 'Manager');

INSERT INTO driver(driver_ID,Fname,Lname,sex,dob,location)VALUES('1','Jon','Quick','M','07141980', 'Glasgow');
INSERT INTO driver(driver_ID,Fname,Lname,sex,dob,location)VALUES('2','Yolandi','Visser','F','02141987', 'Glasgow');
INSERT INTO driver(driver_ID,Fname,Lname,sex,dob,location)VALUES('3','Tony','Romo','M','04231978', 'Dallas');
INSERT INTO driver(driver_ID,Fname,Lname,sex,dob,location)VALUES('4','Cammi','Granato','F','03221970', 'Glasgow');
INSERT INTO driver(driver_ID,Fname,Lname,sex,dob,location)VALUES('5','Drew','Doughty','M','01241986', 'Glasgow');

INSERT INTO taxi(taxi_ID,employee_ID,model,make,color,registration_type)VALUES('1','1','model 3','Tesla','silver', 'El');
INSERT INTO taxi(taxi_ID,employee_ID,model,make,color,registration_type)VALUES('2','5','Mustang','Ford','black', 'Cl');
INSERT INTO taxi(taxi_ID,employee_ID,model,make,color,registration_type)VALUES('3','4','C330','Mercedes','silver', 'A2');
INSERT INTO taxi(taxi_ID,employee_ID,model,make,color,registration_type)VALUES('4','2','Accord','Honda','white', 'El');
INSERT INTO taxi(taxi_ID,employee_ID,model,make,color,registration_type)VALUES('5','3','Prius','Honda','blue', 'D3');

INSERT INTO Private_Client(private_client_ID,first_name,last_name,address,phone_number)VALUES('1', 'Rodger', 'Smith', '01 Main St, New York City, NY', '0123456789');
INSERT INTO Private_Client(private_client_ID,first_name,last_name,address,phone_number)VALUES('2', 'James', 'Borg', '450 Stone, New York City, NY', '0987654321');
INSERT INTO Private_Client(private_client_ID,first_name,last_name,address,phone_number)VALUES('3', 'Franklin', 'Wong', '638 Voss, New York City, NY', '0287654321');

INSERT INTO Business_Client(bus_client_ID,first_name,last_name,address,phone_number,contract_ID)VALUES('1', 'William', 'Baker', '01 Corporate St, New York City, NY', '1234567890','1');
INSERT INTO Business_Client(bus_client_ID,first_name,last_name,address,phone_number,contract_ID)VALUES('2', 'John', 'Smith', '03 Corporate St, New York City, NY', '1134567890','2');
INSERT INTO Business_Client(bus_client_ID,first_name,last_name,address,phone_number,contract_ID)VALUES('3', 'Jennifer', 'Wallace', '06 Corporate St, New York City, NY', '1334567890','3');

INSERT INTO Contract(contract_ID, start_date, end_date, fixed_fee, office_ID, no_of_jobs, jobs_finished)VALUES('1', '01-JAN-18', '01-JAN-19', '19.99', '0123456789', '100', '2');
INSERT INTO Contract(contract_ID, start_date, end_date, fixed_fee, office_ID, no_of_jobs, jobs_finished)VALUES('2', '10-JAN-16', '10-JAN-19', '14.99', '0123456789',  '150', '0');
INSERT INTO Contract(contract_ID, start_date, end_date, fixed_fee, no_of_jobs, office_ID, jobs_finished)VALUES('3', '11-JAN-16', '11-JAN-19', '14.99', '0123456789', '175', '0');

INSERT INTO Job(job_ID, private_client_ID, employee_ID, pickup_location,pickup_date,drop_off_location, drop_off_date, miles_driven)VALUES('1', '1', '1', '02 Main St, New York City, NY', '02-JAN-18', '02 California St, New York City, NY', '02-JAN-18', '4');
INSERT INTO Job(job_ID, employee_ID, pickup_location,pickup_date,drop_off_location, drop_off_date,contract_ID, miles_driven)VALUES('2', '1', '02 Main St, New York City, NY', '02-JAN-18', '02 California St, New York City, NY', '02-JAN-18', '1', '4');
INSERT INTO Job(job_ID, employee_ID, pickup_location,pickup_date,drop_off_location, drop_off_date,contract_ID, miles_driven)VALUES('3', '3', '02 Main St, New York City, NY', '02-JAN-18', '05 California St, New York City, NY', '05-JAN-18', '1', '5');

INSERT INTO Job_Status VALUES('1', 'Y', 'Customer vomitted in seat');
INSERT INTO Job_Status VALUES('2', 'Y', '');
INSERT INTO Job_Status VALUES('3', 'Y', '');
