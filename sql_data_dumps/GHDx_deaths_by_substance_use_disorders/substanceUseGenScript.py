import csv
import glob

# Script Variables #
readPath = 'ghdx_data/*/*.CSV'
generatedTableName = "gen.csv"
####################

# State Names
stateNames = ["Alabama", "Alaska", "American Samoa", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "District of Columbia", "Florida", "Georgia", "Guam", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Minor Outlying Islands", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Northern Mariana Islands", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Puerto Rico", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "U.S. Virgin Islands", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]

# Helper functions

# Check to see if it is a row we want
def rowValid(row):
    if not(row['location_name'] in stateNames):
        return False
    elif not(row['age_name'] == "Age-standardized"):
        return False
    elif not(row['sex'] == "Both"):
        return False
    else:
        #print("Row valid!")
        return True

# Writes all valid rows to csv file
def writeFileLines(filename, writer):
    with open(filename, newline='') as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            if (rowValid(row)):
                writer.writerow([row['location_name'], row['cause_name'], row['year_id'], row['mx'], row['lower'], row['upper']])

# Main Logic

csvFiles = glob.glob(readPath)

with open(generatedTableName, 'w', newline='') as csvfile:
    fdnames = ['state_name', 'cause_name', 'year', 'mx', 'lower', 'upper']
    tableWriter = csv.writer(csvfile, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
    tableWriter.writerow(fdnames)
    for csvFile in csvFiles:
        print(csvFile)
        writeFileLines(csvFile, tableWriter)

"""
with open('ghdx_data/IHME_USA_COUNTY_USE_INJ_MORTALITY_1980_2014_STATES_A_TO_F_CSV/IHME_USA_COUNTY_USE_INJ_MORTALITY_1980_2014_ALABAMA_Y2018M03D13.CSV', newline='') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        print(row['location_id'], row['sex'])


print(row)

with open('eggs.csv', 'w', newline='') as csvfile:
    spamwriter = csv.writer(csvfile, delimiter=',',
                            quotechar='"', quoting=csv.QUOTE_MINIMAL)
    spamwriter.writerow(['Spam'] * 5 + ['Baked Beans'])
    spamwriter.writerow(['Spam', 'Lovely Spam', 'Wonderful Spam'])
"""
