-- Load data into dimdate
\COPY dimdate(dateid, date, year, quarter, quartername, month, monthname, day, weekday, weekdayname)
FROM 'File Path'
DELIMITER ',' CSV HEADER;

-- Load data into dimstation
\COPY dimstation(stationid, city)
FROM 'File Path'
DELIMITER ',' CSV HEADER;

-- Load data into dimtruck
\COPY dimtruck(truckid, trucktype)
FROM 'File Path'
DELIMITER ',' CSV HEADER;

-- Load data into facttrips
\COPY facttrips(tripid, dateid, stationid, truckid, wastecollected)
FROM 'File Path'
DELIMITER ',' CSV HEADER;
