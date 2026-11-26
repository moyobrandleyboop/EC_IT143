/*
    EC_IT143_W5.2_FIFA_Rankings_bm.sql
    Author: Brandley Moyo
    Assignment: 5.2 My Communities Analysis – Create Answers
    Community: My Communities
*/

USE [My Communities];
GO

----------------------------------------------------------------
-- Question 1
-- Author: Brandley Moyo
-- Which countries have the highest FIFA ranking scores?
----------------------------------------------------------------

SELECT TOP 10
    country_full,
    total_points
FROM fifa_ranking
ORDER BY total_points DESC;
GO

----------------------------------------------------------------
-- Question 2
-- Author: Brandley Moyo
-- Which countries have the lowest FIFA ranking scores?
----------------------------------------------------------------

SELECT TOP 10
    country_full,
    total_points
FROM fifa_ranking
ORDER BY total_points ASC;
GO

----------------------------------------------------------------
-- Question 3
-- Author: Student Collaboration
-- Which confederation has the most countries represented?
----------------------------------------------------------------

SELECT
    confederation,
    COUNT(*) AS country_count
FROM fifa_ranking
GROUP BY confederation
ORDER BY country_count DESC;
GO

----------------------------------------------------------------
-- Question 4
-- Author: Brandley Moyo
-- What are the average ranking points by confederation?
----------------------------------------------------------------

SELECT
    confederation,
    AVG(total_points) AS average_points
FROM fifa_ranking
GROUP BY confederation
ORDER BY average_points DESC;
GO
