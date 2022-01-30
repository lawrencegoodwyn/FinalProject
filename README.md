# Final Project

## Communication Protocols
- Weekly Meeting Saturday 8am -10am 
- Slack Channel 

## Selected topic and Why/Questions we hope to answer

Everyone has heard the tale about weird things happening during a full moon. The police, fire rescue, service operators and hospitals are speculated to see a spike in calls during a full moon phase. To accomplish this analysis during the four moon phases (New Moon, First Quarter, Third Quarter, and Full Moon), we will look at the calls for service in Gainesville, Florida that went to the police and the fire rescue department between the years 2018 and 2021. There is some assumption that following March 2020 the calls to service may trend a bit differently due to the introduction of COVID-19. We selected this topic to explore if there is any correlation to the moon phases and calls to service to determine if the myth is simply a myth or a probable explanation for some of the weird things that happen when it is a full moon.

1.  Can we predict the type of crimes based on the moon phases? Crimes will be categorized into Person or Property and futured seperated by crime type. (see below)
2.	What type of crimes should we expect leading up to the full moon? 
3.	Are the moon phases relevant? if so which is the most?

[Presentation](https://docs.google.com/presentation/d/11eIVAccX1Z8nAHaC2epMZFV1IC3TIXff1RNx4FilYmQ/edit?usp=sharing)

# ROLES: 
-	Repo management: (Diamond)- interactive dashboard, gernal research for a well written presentation and analysis. 
-	Mockup ML: (Lawrence)- an idea of the possible algorithms to create this automation
-	Mockup Database w/ sample data: (Sheri)- cleaned CSV data, tables thinking about creating
- Technologies Used:  possible dependencies and imports (Jacob)

# Technology Used
## Data Cleaning
Jupyter Notebook and Pandas will be used to clean the datasets.  Python will be used for further analysis 

## Data Storage
Postgres will be the database used.  We will query and join the datasets utilizing SQL.  

## Machine Learning
SciKitLearn is the library that will be used.  We will be using K-Nearest Neighbor, RandomForest and Naive-Bayes, Yellow Brick
## Dashboard
We will use Tableau Public and MatPlotLib/Plotly for visual displays and fully interactive [Dashboard](https://public.tableau.com/app/profile/jake.wolfe/viz/MoonPhaseCrime_Test/MapofAssaultBatteryLocations?publish=yes)

# Data Source
[Lunar Calendar](timeanddate.com)
- website that we are using to link the date of unique incidents to the moon phases.

[Gainsville Crime](Gainesville_Crime.zip)

[Gainsville Fire_EMS](Gainesville_Fire_EMS.zip)
-  We took the raw data and imported them into df that focused on calls for service between 2018 and 2021

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
- Government regulation violation
- Quality of life



Mockup ML: Classify the crimes as either violent or not-- then using the moob phases then input both into model and use ML to take a deep dive into the crime and when it coorelates with the _day of the week (DOW)_ moon phases. Inputting data from 2018-2021. Dependencies imported: 
  - Scikit 
  - TensorFlow
  - Kmiras
  - Clustering
  - y = Violent crime
  - X = Moon Phase 

OTHER NOTES: 
Finding if there is a strong relationship between the models.  The strength of the correlation then allows us to make an easier link for causation. Why might these things be correlated.  Machine learning is all predictive and doesn’t actually understand. 




