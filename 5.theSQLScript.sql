-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.

DROP TABLE User;

CREATE TABLE User (
    id int,
  	firstName varchar(255),
  	lastName varchar(255),
  	email varchar(255),
  	cultureId int,
  	deleted bit,
  	country varchar(255),
  	isRevokeAccess bit,
    created DATETIME
   
);

        
INSERT INTO User (id, firstName, lastName, email, cultureId, deleted, country, isRevokeAccess, created) VALUES 
  (1, 'Victor', 'Shevchenko', 'vs@gmail.com', 1033, 1, 'US', 0, '2011-04-05'),
  (2, 'Oleksandr', 'Petrenko', 'op@gmail.com', 1034, 0,'UA', 0, '2014-05-01'),
  (3, 'Victor', 'Tarasenko', 'vt@gmail.com', 1033, 1, 'US', 1, '2015-07-03'),                   
  (4, 'Sergly', 'Ivanenko', 'sergly@gmail.com', 1046, 0, 'UA',1,'2010-02-02'),
  (5, 'Vitalii', 'Danilchenko', 'shumko@gmail.com', 1031, 0, 'QA', 1,'2009-01-01'),
  (6, 'Joe', 'Dou', 'joe@gmail.com', 1032, 0, 'US', 1, '2009-01-01'),
  (7, 'Marko', 'Polo', 'marko@gmail.com', 1033, 1, 'UA', 1, '2015-07-03');
                   
SELECT * FROM User;
DROP TABLE myGroup;
CREATE TABLE myGroup (
    id int,
	name varchar(255),
	created DATETIME
);

INSERT INTO myGroup (id, name, created) VALUES
	(10, 'Support', '2010-02-02'),
	(12, 'Dev team', '2010-02-03'),
	(13, 'Apps team', '2011-05-06'),
	(14, 'TEST-dev team', '2013-05-06'),
	(15, 'Guest', '2014-02-02'),
	(16, 'TEST-QA-team', '2014-02-02'),
	(17, 'TEST-team', '2011-01-07');

SELECT * FROM myGroup;

DROP TABLE groupMembership;
CREATE TABLE groupMembership(
	id int,
	userID int,
	groupID int,
	created DATETIME
);

INSERT INTO groupMembership (id, userID, groupID, created) VALUES
		(110, 2, 10, '2010-02-02'),
		(112, 3, 15, '2010-02-03'),
		(114, 1, 10, '2014-02-02'),
		(115, 1, 17, '2011-05-02'),
		(117, 4, 12, '2014-07-13'),
		(120, 5, 15, '2014-06-15');
		
SELECT * FROM groupMembership;

--names of test groups
SELECT name FROM myGroup WHERE name LIKE 'TEST%';

--users with Victor as firstname and those who do not belong to test groups
SELECT User.firstName, User.lastName
FROM User
INNER JOIN myGroup 
WHERE User.firstName LIKE 'Victor%' AND myGroup.name  NOT LIKE 'TEST%';

--users created before the group was created
SELECT User.id, User.firstName, User.lastName , myGroup.id, myGroup.name
FROM User
INNER JOIN myGroup 
WHERE User.created < myGroup.created




