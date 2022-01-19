## Meeting Saturday 8am -10am 


# Final Project
## Selected topic and Why and Questions we hope answer

# Hypothesis: 

Everyone has heard the tale about weird things happening during a full moon. The police, fire rescue, service operators and hospitals are speculated to see a spike in calls during a full moon phase. To accomplish this analysis during the four moon phases (New moon, First Quarter, third quarter, and full moon) we will look at the calls for service in Gainesville, Florida that went to the police and the fire rescue department between the years 2018 and 2021. There is some assumption that following March 2020 the calls to service may trend a bit differently due to the introduction of COVID-19. 
1.	Does the moon phase affect the calls for service? 

We selected this topic to verify if there is any correlation to the moon phases and calls to service to determine if the myth is simply a myth or a probable explanation for some of the weird things that happen when it is a full moon. 

# Data Source
[Lunar Calendar](timeanddate.com)
- website that we are using to link the date of unique incidents to the moon phases.

[Gainsville Crime](Gainesville_Crime.zip)

[Gainsville Fire_EMS](Gainesville_Fire_EMS.zip)
-  We took the raw data and imported them into df that focused on calls for service between 2018 and 2021.

# Technologies Used 
- Microsoft Office CSV For Excel
- Python
- SQL
- Postgres
- Jupyter Notebook
- Pandas
- Tableau
- Machine Learning
- Dashboard

# Preprocessing
Took data from the [Lunar Calendar](timeanddate.com) and compiled them to an excel. We created a unique column for the year as this dataset didn’t have one. The year date and month were merged to create a date type column.  In addition, we removed the illumination column from the dataset as it was just a series or numbers with no known value.

After identifying the unique incident types we  got rid of incidents that didn’t necessarily imply a crime occurred. 
Unique incident types that were removed: 
1. assist other agency, 
2. assist citizen,
3. warrant arrest,
4. lost/stolen vehicle tag/ decal,
5. dcf investigation,
6.  drug poss of controlled substance, 
7.  information,
8. found contraband, 
9.  tow report 
10.  recovered stolen veh, 
11. stalking (simple),
12. found-returned,
13. seize tag

With the remaining unique incident types we decided to group them into the following categories: 

**Crime types** 
- Drug 
- Alcohol
- Assault
- Battery
- Fraud
- Homicide
- Theft
- Suicide
- Other

Mockup ML: Use ML to take a deep dive into the crime and when it coorelates with day of the week (DOW) and Moon Phases. Inputting data from 2018-2021. Dependencies imported: 
  - Scikit 
  - TensorFlow
  - OneHotEnconder (?) - If we want to identify on the data the crimes
  - X = Moon Phase
  - y = Crime Type (Or -- use OneHotEncoder and have each type of crime be considered a Y/N?) 

OTHER NOTES: 
Finding if there is a strong relationship between the models.  The strength of the correlation then allows us to make an easier link for causation. Why might these things be correlated.  Machine learning is all predictive and doesn’t actually understand. 




