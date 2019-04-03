column table format a30 wrapped;
column comments format a100 wrapped;
set linesize 132;

-- Query comments of table
-- This query will show all tables made in your account. Remove tables not for this project

SELECT table_name, comments
  FROM user_tab_comments;

-- Query comments of columns for every <tablename>
SELECT table_name, column_name, comments
FROM user_col_comments
WHERE table_name = 'OFFICE';

SELECT table_name, column_name, comments
FROM user_col_comments
WHERE table_name = 'EMPLOYEE';

SELECT table_name, column_name, comments
FROM user_col_comments
WHERE table_name = 'DRIVER';

SELECT table_name, column_name, comments
FROM user_col_comments
WHERE table_name = 'TAXI';

SELECT table_name, column_name, comments
FROM user_col_comments
WHERE table_name = 'PRIVATE_CLIENT';

SELECT table_name, column_name, comments
FROM user_col_comments
WHERE table_name = 'BUSINESS_CLIENT';

SELECT table_name, column_name, comments
FROM user_col_comments
WHERE table_name = 'CONTRACT';

SELECT table_name, column_name, comments
FROM user_col_comments
WHERE table_name = 'JOB';

SELECT table_name, column_name, comments
FROM user_col_comments
WHERE table_name = 'JOB_STATUS';


