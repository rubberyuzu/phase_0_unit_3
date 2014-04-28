# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
<!-- Identify the fields Twitter collects data for -->
Picture, Username, User ID, Location, Website, Description, Lists, Photo, Video, Date joined 

## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? -->
Username, User ID, 140-maximum characters, Photo, Video, Location, Link

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
<!-- because... -->
One To Many Schema Design, because one user has many tweets, but they all belong to only one user.

## Release 3: Schema Design
<!-- Include your image (inline) of your schema -->
phase_0_unit_3/week7/img/tweet_solo

## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->
all the tweets for a certain user id
SELECT * FROM tweet WHERE user_id=1

the tweets for a certain user id that were made after last Wednesday (whenever last Wednesday was for you)
SELECT * FROM tweet WHERE user_id=1 AND created_at > '04/23/2014'


all the tweets associated with a given user's twitter handle
SELECT * FROM tweet WHERE username='@rubberyuzu'


the twitter handle associated with a given tweet id
SELECT username FROM User JOIN tweet ON(id=user_id) WHERE tweet.id=1

## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->
It was really fun understanding how database works through looking at the service I always use! I could review what I learned this week about SQL here using SQL designer.
One thing I was not very sure is if there's any way to connect 'username' in User and  'username' in tweet, as they are exactly the same thing but currently in mine not connected.
