# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

<!-- paste your terminal output here -->

heredoc> .headers on
heredoc> .mode column
heredoc> EOF
➜  ~ git:(master) ✗ sqlite3 dummy.db
-- Loading resources from /Users/rubberyuzu/.sqliterc
SQLite version 3.7.7 2011-06-25 16:35:41
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users(
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
sqlite

## Release 1: Insert Data 
<!-- paste your terminal output here -->
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-28 04:47:46  2014-04-28 04:47:46
sqlite> SELECT email FROM users;
email                
---------------------
kimmy@devbootcamp.com
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Yuzu', 'Saijo', 'yuzu0125@gmail.com', DATETIME('now'),DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-28 04:47:46  2014-04-28 04:47:46
2           Yuzu        Saijo       yuzu0125@gmail.com     2014-04-28 04:52:07  2014-04-28 04:52:07

#DATE and TIME are all in Asian time! :)


## Release 2: Multi-line commands
<!-- paste your terminal output here -->
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
sqlite> 


## Release 3: Add a column
<!-- paste your terminal output here -->
ALTER TABLE users ADD COLUMN nickname VARCHAR(64);
sqlite> SELECT * FROM users
   ...> ;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-28 04:47:46  2014-04-28 04:47:46            
2           Yuzu        Saijo       yuzu0125@gmail.com     2014-04-28 04:52:07  2014-04-28 04:52:07            
sqlite> UPDATE users SET nickname = 'kim' WHERE id=1;
sqlite> UPDATE users SET nickname = 'yuzu' WHERE id=2;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-28 04:47:46  2014-04-28 04:47:46  kim       
2           Yuzu        Saijo       yuzu0125@gmail.com     2014-04-28 04:52:07  2014-04-28 04:52:07  yuzu      



## Release 4: Change a value
<!-- paste your terminal output here -->
sqlite> UPDATE users SET first_name='Kimmy', nickname='Ninja Coder', updated_at=DATETIME('now') WHERE id=1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-04-28 04:47:46  2014-04-28 05:11:38  Ninja Coder
2           Yuzu        Saijo       yuzu0125@gmail.com     2014-04-28 04:52:07  2014-04-28 04:52:07  yuzu   

## Release 5: Reflect
<!-- Add your reflection here -->
I am pretty confident what I did in here. It was pretty easy to understand and I feel I was provided with clear instructions!
The only thing I was not sure is about making the new column mandatory.Somehow I could not set it to NOT NULL as default....