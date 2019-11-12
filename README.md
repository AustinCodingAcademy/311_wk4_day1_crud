# SQL CRUD

## Setup

* Open MySQL Workbench

* In order to UPDATE/DELETE rows without specifying keys (primary key) we need to disable safe mode in MySQL Workbench

  * In the top bar, select MySQL Workbench -> Preferences
  * Select "SQL Editor"
    * _Note: there are three child dropdowns but just select the parent (SQL Editor)_
  * Scroll to the bottom and deselect the checkbox that says "Safe Updates"

* Once safe mode is disabled you will need to disconnect and reconnect to your db

## Part 1 - Initialize data

* Make sure you've selected the "admin" database

* Create a new query tab
  * Click the button on the top left that has a SQL file with a "plus" icon on it

* Click the folder icon in your query tab to open a new file

* Select the "initialize.sql" script that lives in this repo

* Click the lightning bolt icon to run the query

* If you refresh your schemas you should see a "users", "usersContact" and "usersAddress" table

## Part 2 - CRUD data

We are going to run a couple INSERT/UPDATE/DELETE statements and put our SQL STATEMENTS in the "SQL" section of this README. The SQL instructions are intentionally written in plain english. It's up to you to translate that into the appropriate CRUD operations.

1. Insert users `('test', 'user')` & `('test2', 'user')` into the users table. Use a SELECT statment to verfiy the existence of the new ids 501 and 502. Record just the INSERT statement in the section below.
<!-- insert into users 
(first_name, last_name)
values
('test', 'user'),
('test2', 'user'); -->

2. Pretend we are in the beginnings of an apocalyptic event. It started in Ohio. Update the `usersAddress` table and change every "address" in the state of OH to the text "REDACTED" since Ohio no longer exists. You should update 22 rows. Place this update statement in the section below. 
<!-- update
	usersAddress
set 
	usersAddress.address = "REDACTED"
where
	usersAddress.state = "OH"; -->

3. Delete the user with the id of `114` from the `users` table.
<!-- DELETE FROM
	users
where
	users.id = 114; -->

Did the above statment fail? Why? What does the error response say?
<!-- It did fail because it has a foreign id attached. -->
<!-- The response is "Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`admin`.`usersAddress`, CONSTRAINT `usersAddress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`))" -->

We cannot delete this user yet because other tables (usersContact, usersAddress) are children of this table. Remember when we talked about foreign keys in the last lesson? That means we need to delete the appropriate information from those tables before we can delete the user. 

This should make sense because we can't have user addresses that don't correspond to any user (since the user would have been deleted).

Let's delete the appropriate information from `usersContact`, `usersAddress` and finally `users` all corresponding to the user id of 114. Put all three DELETE statments below.

<!-- DELETE from
	usersContact
where user_id = 114;

DELETE from
	usersAddress
where user_id = 114;

DELETE from 
	users
where id = 114;  -->


## SQL Statements

1. INSERT two users:


2. UPDATE all Ohio addresses to "REDACTED":

3. All three DELETES

* DELETE from usersContact


* DELETE from usersAddress


* DELETE from users


## Summary

Make sure we understand these CRUD operations because soon we will be pulling these SQL commands into our Node/Express application.