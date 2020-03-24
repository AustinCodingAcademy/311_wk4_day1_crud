-- SQL Statements
-- Week 4 Day #1 Assignment

SELECT * FROM users;
SELECT * FROM usersAddress;
SELECT * FROM usersContact;

-- 1. INSERT two users:

INSERT INTO users
    (first_name, last_name)
VALUES
    ('test', 'user'),
    ('test2', 'user');


-- 2. UPDATE all Ohio addresses to "REDACTED":

UPDATE
    usersAddress
SET
    address = 'REDACTED'
WHERE
    state = "OH";

-- 3. All three DELETES

-- 	* DELETE from usersContact
DELETE FROM
  usersContact
WHERE
  id = 114;
  
  
-- 	* DELETE from usersAddress
DELETE FROM
  usersAddress
WHERE
  id = 114;
  
  
-- 	* DELETE from users
DELETE FROM
  users
WHERE
  id = 114;
  
  
-- check 
SELECT * FROM users WHERE id = 114;
