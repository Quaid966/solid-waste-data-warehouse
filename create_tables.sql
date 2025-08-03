-- Dimension Table: dimdate
CREATE TABLE IF NOT EXISTS dimdate (
    dateid       INTEGER PRIMARY KEY,
    date         DATE NOT NULL,
    year         INTEGER NOT NULL,
    quarter      INTEGER NOT NULL,
    quartername  VARCHAR(55),
    month        INTEGER NOT NULL,
    monthname    VARCHAR(55),
    day          INTEGER NOT NULL,
    weekday      INTEGER NOT NULL,
    weekdayname  VARCHAR(55)
);

-- Dimension Table: dimstation
CREATE TABLE IF NOT EXISTS dimstation (
    stationid INTEGER PRIMARY KEY,
    city      VARCHAR(55) NOT NULL
);

-- Dimension Table: dimtruck
CREATE TABLE IF NOT EXISTS dimtruck (
    truckid   INTEGER PRIMARY KEY,
    trucktype VARCHAR(55)
);

-- Fact Table: facttrips
CREATE TABLE IF NOT EXISTS facttrips (
    tripid          INTEGER PRIMARY KEY,
    dateid          INTEGER NOT NULL,
    stationid       INTEGER NOT NULL,
    truckid         INTEGER NOT NULL,
    wastecollected  DOUBLE PRECISION NOT NULL,
    FOREIGN KEY (dateid) REFERENCES dimdate (dateid),
    FOREIGN KEY (stationid) REFERENCES dimstation (stationid),
    FOREIGN KEY (truckid) REFERENCES dimtruck (truckid)
);
