# Final Project

## Communication Protocols
- Weekly Meeting Saturday 8am -10am 
- Slack Channel 

## Selected topic and Why/Questions we hope to answer

Everyone has heard the tale of weird things happening during a full moon. Police, fire rescue, service operators and hospitals are speculated to see a spike in calls during a full moon phase. This project attempts to analyze the calls for service and associated crimes in Gainesville, Florida that went to the police and fire rescue department between 2018 and 2021 during the four moon phases (New Moon, First Quarter, Third Quarter, and Full Moon).  We selected this topic to explore if there is any connection to the moon phases and calls to service to determine if the myth is simply a myth or a probable explanation for the weird things that occur on a full moon.

H₀= There is no statistical difference between the moon phase and crime type.

Ha=There is a statistical difference between moon phase and crime type.

Other Questions:
1.  Can we predict the type of crimes based on the moon phases? 
- Crimes are categorized into Person or Property and further separated by crime type.
2.	What type of crimes should we expect leading up to the full moon? 
3.	Are the moon phases relevant? If so, which is the most?

Assumption:
There is some assumption that following March 2020 the calls to service will trend differently due to COVID-19.

[Presentation](https://docs.google.com/presentation/d/11eIVAccX1Z8nAHaC2epMZFV1IC3TIXff1RNx4FilYmQ/edit?usp=sharing)

# Preprocessing

## Data Source
This project uses two sets, one from City of Gainesville [website](https://data.cityofgainesville.org/Public-Safety/Crime-Responses/gvua-xt9q) and Moon Phase dates from [here](https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/Gainesville,FL/2018-01-01/2021-12-31?unitGroup=us&key=JVFDPCT4LWWPVKADN783XGRVA&include=days&elements=datetime,moonphase).

The City of Gainesville data is a csv file with unique crime IDs, Incident type, Report Date, Offense Date, Report Hour of Day, Report Day of Week, Offense Hour of Day, Offense Day of  Week, City, State, Address, Latitude, longitude, and location. The data from this source represents calls for service where a report was written. The moon phase data source is a JSON object for a single location in Gainesville, FL with the moon phase and date for every date between 2018-2021. The keys are "datetime" and "moon phase". Datetime is in year/month/day format and each moon phase value corresponds to a positive value between the numbers 0-1. A New Moon = 0, First Quarter =0.25, Third Quarter=.75, and Full Moon=1.

The selected moon phase date range for this project was January 1st, 2018, to December 31st, 2021.

## Data Cleaning
Our data source was cleaned using Jupyter Notebook and Pandas. First we renamed our columns as such:
- 'IncidentType': 'CFS'
- 'Report Date' : 'reportDate'
- 'Offense Date' : 'offenseDate'
- 'Report Hour of Day' : 'reportHour'
- 'Report Day of Week' : 'reportDOW'
- 'Offense Hour of Day' : 'offenseHour'
- 'Offense Day of Week' : 'offenseDOW'
- 'City' : 'city'
- 'State' : 'state'
- 'Address' : 'address'
- 'Latitude' : 'latitude'
- 'Longitude' : 'longitude'
- 'Location' : 'location

After renaming our columns we filtered for our date range on the offense date column. Next, we dropped all columns but "ID","CFS", "offenseDate", "offenseHour", "offenseDOW", "latitude", "longitude" and "CFS_Type". 

Then the moon phase data source was read in as a data frame. The date-time format was changed with pandas "to_datetime".  The moon phase and Gainesville Crime and Classifications data frames were all merged 
on the Date column. Persons, Property, Government and other are the four crime classifications ("CFS") a crime type("CFS_Type") could fall under. 

We got rid of incidents that didn’t necessarily imply a crime occurred and refined our crime types to the unique list of instances below.
Unique incident types that were removed: 
1. assist other agencies, 
2. assist citizen,
3. warrant arrest,
4. lost/stolen vehicle tag/ decal,
5. DCF investigation,
6. Drug possession of controlled substance, 
7. information,
8. found contraband, 
9. tow report 
10. recovered stolen vehicle, 
11. stalking (simple),
12. found-returned,
13. seize tag

With the remaining unique incident types, we decided to group them into the following categories: 

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

## Data Storage

Postgres is the database that we used. Utilizing SQL we queried and joined the datasets. 

### ERDiagram

![ERD2](https://user-images.githubusercontent.com/87162266/151726526-97a0ace3-53e2-45fe-9e45-6a7fb43842f7.png)

Date is the foreign key connection between CallsForService and MoonPhase. "CFS" is the foreign key connection to classification from CallsForSerivice.

## Machine Learning
SciKitLearn is the library that will be used.  We will be using:
- Scikit 
  - TensorFlow
  - Clustering
  - y = Violent crime
  - X = moonphase
  - K-Nearest Neighbor
  - RandomForest
  - Naive-Bayes

## Dashboard
We will use Tableau Public and MatPlotLib/Plotly for visual displays and fully interactive [Dashboard](https://public.tableau.com/app/profile/jake.wolfe/viz/MoonPhaseCrime_Test/MapofAssaultBatteryLocations?publish=yes)
  


