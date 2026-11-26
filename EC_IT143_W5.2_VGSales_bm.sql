/*
    EC_IT143_W5.2_VGSales_bm.sql
    Author: Brandley Moyo
    Assignment: 5.2 My Communities Analysis – Create Answers
    Community: Video Game Sales
*/

USE [My Communities];
GO

----------------------------------------------------------------
-- Question 1
-- Author: Brandley Moyo
-- Which are the best-selling video games worldwide?
----------------------------------------------------------------

SELECT TOP 10
    Name,
    Global_Sales
FROM vgsales
ORDER BY Global_Sales DESC;
GO

----------------------------------------------------------------
-- Question 2
-- Author: Brandley Moyo
-- Which gaming platforms have the highest total sales?
----------------------------------------------------------------

SELECT
    Platform,
    SUM(Global_Sales) AS Total_Sales
FROM vgsales
GROUP BY Platform
ORDER BY Total_Sales DESC;
GO

----------------------------------------------------------------
-- Question 3
-- Author: Student Collaboration
-- Which game genres generate the most sales?
----------------------------------------------------------------

SELECT
    Genre,
    SUM(Global_Sales) AS Total_Sales
FROM vgsales
GROUP BY Genre
ORDER BY Total_Sales DESC;
GO

----------------------------------------------------------------
-- Question 4
-- Author: Brandley Moyo
-- Which publishers sold the most games worldwide?
----------------------------------------------------------------

SELECT TOP 10
    Publisher,
    SUM(Global_Sales) AS Total_Sales
FROM vgsales
GROUP BY Publisher
ORDER BY Total_Sales DESC;
GO
