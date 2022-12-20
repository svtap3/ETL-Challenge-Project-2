Drop Table SharkAttacks;

CREATE TABLE SharkAttacks (
id INT not null,
Year INT not null,
Country VARCHAR not null,
Activity VARCHAR not null,
Sex VARCHAR not null,
Fatal VARCHAR not null
);

Select * From SharkAttacks;

drop table WorldPopulation;

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

select * from WorldPopulation;

select SharkAttacks.Year, SharkAttacks.Country, SharkAttacks.Activity, SharkAttacks.Sex, SharkAttacks.Fatal, WorldPopulation."2022 Population", WorldPopulation."2020 Population", 
WorldPopulation."2015 Population", WorldPopulation."2010 Population", WorldPopulation."2010 Population", WorldPopulation."2000 Population", WorldPopulation."1990 Population", WorldPopulation."1980 Population", WorldPopulation."1970 Population", WorldPopulation."Growth Rate", WorldPopulation."World Population Percentage"
from SharkAttacks
join WorldPopulation
on SharkAttacks.country=WorldPopulation.country;
