import csv

# Script Variables #
readPath = 'disease_scores.csv'
generatedTableName = "score_table.csv"
####################


# Helper functions

def getYearsHeader(filename):
    prevYear = "0"
    years = []
    with open(filename, newline='') as csvfile:
        reader = csv.DictReader(csvfile, fieldnames=['state', 'year', 'rate'])
        for row in reader:
            #print(row)
            if (int(row['year']) <= int(prevYear)):
                break
            else:
                years.append(row['year'])
                prevYear = row['year']
    #print(years)
    return years


# Main Logic

with open(generatedTableName, 'w', newline='') as writeFile:
    fdnames = getYearsHeader(readPath)
    print(fdnames)
    fdnames.insert(0, 'state')
    print(fdnames)
    # add years programmatically
    tableWriter = csv.writer(writeFile, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
    tableWriter.writerow(fdnames)

    with open(readPath, newline='') as readFile:
        reader = csv.DictReader(readFile, fieldnames=['state', 'year', 'rate'])

        prevYear = "0"
        rowValues = []
        state = "NO_STATE"
        for row in reader:
            if (state == "NO_STATE"):
                state = row['state']
                rowValues.append(state)
            if (row['state'] != state and int(row['year']) <= int(prevYear)):
                tableWriter.writerow(rowValues)
                print(rowValues)
                rowValues.clear()
                rowValues.append(row['state'])

            state = row['state']
            rowValues.append(row['rate'])
            prevYear = row['year']

