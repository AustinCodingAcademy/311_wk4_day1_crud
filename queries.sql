-- PT1
-- INSERT INTO users
-- 	(first_name, last_name)
-- VALUES 
-- 	("Test0","User"),
-- 	("Test1","User")


-- SELECT id
-- 	FROM
-- 		users

-- PT2
-- UPDATE
-- 	usersAddress
-- SET
-- 	state = 'REDACTED'
-- WHERE
-- 	state = 'OH'
-- 
-- SELECT
-- 	id
-- FROM
-- 	usersAddress
-- WHERE
-- 	state = 'REDACTED'

-- PT3
DELETE FROM
	usersContact
WHERE
	user_id = 114;

DELETE FROM
	usersAddress
WHERE
	user_id = 114;

DELETE FROM
	users
WHERE
	id = 114;