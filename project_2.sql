--Drop table to correct errors with table.
Drop Table SharkAttacks;

--Creating table for shark attacks. 
CREATE TABLE SharkAttacks (
id INT not null,
Year INT not null,
Country VARCHAR not null,
Activity VARCHAR not null,
Sex VARCHAR not null,
Fatal VARCHAR not null
);

--Reviewing to make sure table created corrrectly. 
Select * From SharkAttacks;

--Drop table to correct errors with world population table. 
drop table WorldPopulation;

--Created table for world population
CREATE TABLE WorldPopulation (
id VARCHAR not null,
country VARCHAR not null,
"2022 Population" INT not null,
"2020 Population" INT not null,
"2015 Population" INT not null, 
"2010 Population" INT not null,
"2000 Population" INT not null, 
"1990 Population" INT not null, 
"1980 Population" INT not null, 
"1970 Population" INT not null, 
"Growth Rate" Decimal not null,
"World Population Percentage" Decimal not null
);

--Reviewing to make sure table created correctly. 
select * from WorldPopulation;

--Test join to make sure tables would merge correctly. 
select SharkAttacks.Year, SharkAttacks.Country, SharkAttacks.Activity, SharkAttacks.Sex, SharkAttacks.Fatal, WorldPopulation."2022 Population", WorldPopulation."2020 Population", 
WorldPopulation."2015 Population", WorldPopulation."2010 Population", WorldPopulation."2010 Population", WorldPopulation."2000 Population", WorldPopulation."1990 Population", WorldPopulation."1980 Population", WorldPopulation."1970 Population", WorldPopulation."Growth Rate", WorldPopulation."World Population Percentage"
from SharkAttacks
join WorldPopulation
on SharkAttacks.country=WorldPopulation.country

--Join to review options, determined query was did not yield data that was pertitent to summary.
select distinct
SharkAttacks.country,
"Growth Rate", 
"World Population Percentage" 
FROM WorldPopulation
Inner JOIN SharkAttacks ON
SharkAttacks.country = WorldPopulation.country;

--Query looking at total shark attacks per country.
select country, count(*)
from SharkAttacks
group by country
order by "count" asc;

--Query looking at percentage of world population per country. 
select country, "World Population Percentage"
FROM WorldPopulation
order by "World Population Percentage" desc;

--Query looking at countries with the highest concntration of shark attacks. 
select SharkAttacks.Country,count(SharkAttacks.Country), WorldPopulation."World Population Percentage" 
from SharkAttacks
join WorldPopulation
on SharkAttacks.country=WorldPopulation.country
group by SharkAttacks.Country,WorldPopulation."World Population Percentage"
order by "count" desc;

--Query looking at activity that was taking place when the shark attack occurred, ordered by world populaton percentage. 
select SharkAttacks.Country,count(SharkAttacks.Country), SharkAttacks.sex, SharkAttacks.activity, WorldPopulation."World Population Percentage" 
from SharkAttacks
join WorldPopulation
on SharkAttacks.country=WorldPopulation.country
group by SharkAttacks.Country,SharkAttacks.sex, SharkAttacks.activity,WorldPopulation."World Population Percentage"
order by "World Population Percentage" desc;

--Query with with countries ordered by the highest population percentage to determine which countries had both the highest percentage of population and the lowest amount of shark attacks. 
select SharkAttacks.Country,count(SharkAttacks.Country),WorldPopulation."World Population Percentage" 
from SharkAttacks
join WorldPopulation
on SharkAttacks.country=WorldPopulation.country
group by SharkAttacks.Country,WorldPopulation."World Population Percentage"
order by "World Population Percentage" desc;

--Additional query ordered by shark attacks per country joined with world population percentage to further support prior queries.  
select SharkAttacks.Country,count(SharkAttacks.Country), WorldPopulation."World Population Percentage" 
from SharkAttacks
join WorldPopulation
on SharkAttacks.country=WorldPopulation.country
group by SharkAttacks.Country,WorldPopulation."World Population Percentage"
order by "count" asc;