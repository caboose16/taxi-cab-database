-- Insert Comments Script

-- list tables availale in your schema
SELECT table_name
   FROM all_tables
   WHERE owner = 'SSANTANA';

--Table Office
COMMENT ON TABLE Office IS 'Office';

COMMENT ON COLUMN Office.office_ID 
  IS 'unique ID for each office';

COMMENT ON COLUMN Office.phone_number 
  IS 'Clients 10 digit Phone Number - Format: 01233456789';

COMMENT ON COLUMN Office.address
  IS 'Clients Address - Format: 12345 Main St, City, State';

COMMENT ON COLUMN Office.employee_ID
  IS 'Foreign key identifying manager for office';


--Table Employee
COMMENT ON TABLE Employee 
  IS 'information on individual employees';

COMMENT ON COLUMN Employee.office_ID 
  IS 'foreign key denoting which office employee assigned too';

COMMENT ON COLUMN Employee.Fname 
  IS 'First name of employee cannot be null';

COMMENT ON COLUMN Employee.Lname 
  IS 'Last name of employee cannot be null';

COMMENT ON COLUMN Employee.sex
  IS 'employee gender';

COMMENT ON COLUMN Employee.phone_number
  IS 'Employees 10 digit Phone Number - Format: 01233456789';

COMMENT ON COLUMN Employee.title
  IS 'position employee works in company';


--table driver
COMMENT ON TABLE driver 
  IS 'information on individual drivers';

COMMENT ON COLUMN driver.driver_ID 
  IS 'Primary key to id drivers';

COMMENT ON COLUMN driver.Fname 
  IS 'First name of driver cannot be null';

COMMENT ON COLUMN driver.Lname 
  IS 'Last name of driver cannot be null';

COMMENT ON COLUMN driver.sex 
  IS 'driver gender';

COMMENT ON COLUMN driver.dob 
  IS 'driver date of birth - Format: mmddyyyy';

COMMENT ON COLUMN driver.location 
  IS 'Location of driver - Format: 12345 street city zip';


--table taxi
COMMENT ON TABLE taxi 
  IS 'information on individual taxis';

COMMENT ON COLUMN taxi.employee_ID 
  IS 'Foreign key to link taxi to owner';

COMMENT ON COLUMN taxi.model 
  IS 'model of taxi';

COMMENT ON COLUMN taxi.make 
  IS 'make of taxi';

COMMENT ON COLUMN taxi.color 
  IS 'color of taxi';

COMMENT ON COLUMN taxi.registration_type 
  IS 'Two digit code for registration type';

--Table Private_Client
COMMENT ON TABLE Private_Client IS 'Non-Business Clients';

COMMENT ON COLUMN Private_Client.address
  IS 'Client''s Address - Format: 12345 Main St, City, State';
COMMENT ON COLUMN Private_Client.phone_number
  IS 'Client''s 10 digit Phone Number - Format: 01233456789';

--Table Contract
COMMENT ON TABLE Contract IS 'Contracts with business clients';

COMMENT ON COLUMN Contract.start_date
  IS 'Date the contract begins';
COMMENT ON COLUMN Contract.end_date
  IS 'Date the contract ends';
COMMENT ON COLUMN Contract.fixed_fee
  IS 'The fixed flat fee the business client will pay per ride';
COMMENT ON COLUMN Contract.no_of_jobs
  IS 'The max number of jobs the fixed fee is elegible for';
COMMENT ON COLUMN Contract.fixed_fee
  IS 'The office ID that the contract is run by';
COMMENT ON COLUMN Contract.jobs_finished
  IS 'The number of jobs finished under the contract';

--Table Job
COMMENT ON TABLE Job IS 'Details of a non-shared ride job';

COMMENT ON COLUMN Job.private_client_ID
  IS 'The private client''s id for the job if applicable';
COMMENT ON COLUMN Job.employee_ID
  IS 'The ID for the employee who is driving the client to the destination';
COMMENT ON COLUMN Job.pickup_location
  IS 'The location where the client will be pickup up at';
COMMENT ON COLUMN Job.pickup_date
  IS 'The date when the client will be picked up at';
COMMENT ON COLUMN Job.drop_off_location
  IS 'The location where the client will be dropped of at';
COMMENT ON COLUMN Job.drop_off_date
  IS 'The date the client was dropped off at';
COMMENT ON COLUMN Job.Contract_ID
  IS 'The ID of the contract the job is being done under. Only used for business clients';
COMMENT ON COLUMN Job.miles_driven
  IS 'The amount of miles driven during the job. Only necessary for private clients';

