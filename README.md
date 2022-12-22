# project_2

Created by: Robert Casiano, Liberty Heise, Autumn Klepal, Antonio Ponce, Randie Sinclair

Jet Ski Inc. Shark Attack Vulnerability

Our company, Jet Ski Inc., is looking for a new home base for our Headquarters that needs to be near the water but we want to ensure our employees are safe from shark attacks.  We will be assessing locations around the world, what activities may have prompted the attacks and what the gender was of the individual.  These variables will help us determine both our HQ location and also which employees we will select to send out into the waters.Our team has spent the past few days gathering data on the types of shark attacks, population growth of humans, and locations. We had lots of success with the data at hand, and we are excited to share our findings.


We will be using Kaggle DB for both sets:
World Population Dataset 
Global Shark Attacks 


Our data will include the following information as columns:

Color Key: WPDS, GSA,
Joining column 

Growth Rate
2022 Population
2020 Population
2015 Population
2010 Population
2000 Population
1990 Population
1980 Population
1970 Population
Growth Rate
World Population Percentage
Country
Number of attacks
Type of shark attack
Country/Area/Location of the shark attack
Activity happening during the shark attack
Fatal
Sex




Data Import and update

Extraction
Each data set was downloaded as a CSV file and then imported into Visual Studio Code using Pandas.

<img width="650" alt="Screenshot 2022-12-21 at 7 27 41 PM" src="https://user-images.githubusercontent.com/109040678/209034908-0a6f0655-199c-4e86-bfdd-1a5da76a6c5d.png">


Transform/Selection 

We used specific columns which had the data we were most interested in retaining in the code and dropped all the other columns.  During this selection process, we determined that Years from the Shark DB was a float64 and needed to be converted into an object in order to be able to clean the data.  

In this portion columns were dropped that weren’t useful to the data we were looking for and began looking for other areas of the data where we needed to clean the data.

<img width="650" alt="Screenshot 2022-12-21 at 7 28 16 PM" src="https://user-images.githubusercontent.com/109040678/209034954-267228a4-7357-480f-aa1c-434f1698097a.png">





<img width="588" alt="Screenshot 2022-12-18 at 3 22 42 PM" src="https://user-images.githubusercontent.com/109040678/209034119-afee4a5a-3c32-451a-b247-8b4d080697e1.png">

We made changes by filling the Nan with zeros in order to have information more readily available.


For the last piece of data above, we changed the year to an integer in order to not have an issue with the original type of data which was a float.  


Joining
We used PgAdmin to create our tables and join them.  We had to arrange each of the columns in the table to run each of the table set ups.  We had to rename one of the columns (Fatal Y/N) so it matched with the columns and we are able to import properly.  The repo had to be updated with the new CSV, after the column name change, and with the new code.  We then used the updates to import to our tables and allow them to run before we could join them together.

Issues that plagued us during the join included had to change Species, we took out the /CCA3 on Country and included VARCHAR for Growth Rate but determined it should be changed to INT.  We took out Territory on the World Population CSV file and found out that while working on the Population table in SQL you need the correct Quotation marks, so if copying and pasting; erase and type in on the PGADmin4 application window.

The code written only brought up the USA when attempting to merge which we determined to be due to an issue with capitalization.  We attempted to remove keys and drop table without a solution.  We also corrected spelling errors and capitalization which contributed to bugs within the code.  The original world population CSV and the Updated Population CSV were moved into the main repo branch - resources file with the capitalization fixed. 



Queries and Loading

In order for us to determine who had the least amount of shark attacks and also the highest percent of population we queried as follows

<img width="392" alt="Screenshot 2022-12-19 at 7 22 54 PM" src="https://user-images.githubusercontent.com/109040678/209034455-17132e76-794d-4505-9f06-85801c42b6ad.png">

Within this query, we determined that China and India had the largest amount of population percentage, while also having the lowest amount of shark attacks.

<img width="309" alt="Screenshot 2022-12-19 at 7 18 00 PM" src="https://user-images.githubusercontent.com/109040678/209034572-9adf9c3c-2612-4244-8c9d-2ca0418ea536.png">


In the query above, we saw which countries had the highest count of shark attacks and the population percent.  However even if the percentage was high, we did not want a country with high shark attack counts.

Lastly, we wanted to determine the sex of the person attacked and the activity they were involved in during the attack.  The following variables help us understand males were solely involved in the shark attacks in the countries we were interested in headquartering.  As well, the activity involved, although informative, wasn't significant enough to determine we should not have jet ski activity in the country.
<img width="578" alt="Screenshot 2022-12-19 at 7 14 51 PM" src="https://user-images.githubusercontent.com/109040678/209034676-3376ec48-d584-4dc9-924f-b31697057c1a.png">

<img width="684" alt="Screenshot 2022-12-19 at 7 11 49 PM" src="https://user-images.githubusercontent.com/109040678/209034750-694965a3-2248-49fa-8889-56e05b07abe4.png">






In Summary:

Our company Jet Ski inc. has selected our team to form five ideal locations for our new company set up before we send another team for location recon. The top two countries we have picked based off of our findings are: China and India. We picked these two because of the population, the number of shark attacks, and the activities in which these attacks had occurred.
We also concluded the worst two locations are: USA, and Australia. Based on how high of the numbers there are in shark attacks. The reason we wanted to include these two, is so not only can we avoid them but hopefully make predictions on if it will ever increase or decrease.
We set a threshold to not go under the two percent in World Population Percentage on these attacks so we can try to safely assemble our teams for recon and hopefully find a new place to call home for our company.  We value our employees and the natural habitat of the sharks, which is why we are looking for the balance between the two.

Future improvements:  

During the process of selecting our databases we recognized data was helpful to the questions we were asking, however, there were still issues with being as specific as possible.  For example, we were not able to query for coastal cities but had to leave the queries open to countries.  For the next phase in the project we would like to build a table to query for weather results so we are actually placing our HQ in a location that would suit our needs for testing our jet skis.


