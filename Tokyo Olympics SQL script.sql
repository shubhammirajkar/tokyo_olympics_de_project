--no of atheletes fom each country
SELECT Country,COUNT(*)AS TotalAtheletes
FROM athletes
GROUP BY Country
ORDER BY TotalAtheletes DESC;

---no of medals won by each country
SELECT 
Team_Country,
SUM(Gold) AS Total_Gold,
SUM(Silver)AS Total_Silver,
SUM(Bronze) AS Total_Bronze
FROM medals
GROUP BY Team_Country
ORDER BY Total_Gold DESC;

--avg no of medals for each discipline for each gender
SELECT Discipline,
AVG(Female) AS Avg_Female,
AVG(Male) AS Avg_Male
FROM entriesgender
GROUP BY Discipline;

--No of Medals won by India
select * 
from medals
where Team_Country in ('India');


---Top 10  country with gold medals
SELECT TOP(10)Team_Country,
SUM(Gold) AS Total_Gold,
SUM(Silver)AS Total_Silver,
SUM(Bronze) AS Total_Bronze
FROM medals
GROUP BY Team_Country
ORDER BY Total_Gold DESC;

--Top 5 countries with highest number of coaches 
SELECT TOP(5)Country, Count(Name) As TotalCoaches
from coaches
GROUP BY Country
ORDER BY TotalCoaches DESC;

