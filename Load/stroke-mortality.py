import csv
import db

data = []

with open('../Data/Stroke_Mortality_Data_Among_US_Adults__35___by_State_Territory_and_County.csv', mode='r') as csv_file:
    for row in csv.DictReader(csv_file):
        data.append({
            'year' : int(row["Year"]),
            'state' : "'" + row["LocationAbbr"] + "'",
            'class' : "'" + row["Class"] + "'",
            'topic' : "'" + row["Topic"] + "'",
            #'amount' : int(float(row["Data_Value"]) *  100000)
        })

#Year,LocationAbbr,LocationDesc,GeographicLevel,DataSource,Class,Topic,Data_Value,Data_Value_Unit,Data_Value_Type,Data_Value_Footnote_Symbol,Data_Value_Footnote,StratificationCategory1,Stratification1,StratificationCategory2,Stratification2,TopicID,LocationID,Location 1
#2014,AK,Anchorage,County,NVSS,Cardiovascular Diseases,Stroke Mortality,71.7,"per 100,000 population","Age-adjusted, Spatially Smoothed, 3-year Average Rate",,,Gender,Overall,Race/Ethnicity,Overall,T6,02020,"(61.159049, -149.103905)"

db.insertIntoTable("diseases", data)

