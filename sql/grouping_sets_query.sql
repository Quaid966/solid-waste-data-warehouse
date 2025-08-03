-- Create a grouping sets query using the columns stationid, trucktype, and total waste collected.
SELECT
    ds.stationid,
    dt.trucktype,
    SUM(wastecollected) AS total_waste,
    
    GROUPING(ds.stationid) AS total_waste_per_station,
    GROUPING(dt.trucktype) AS total_waste_per_trucktype

FROM facttrips ft
JOIN dimstation ds ON ft.stationid = ds.stationid
JOIN dimtruck dt ON ft.truckid = dt.truckid

GROUP BY GROUPING SETS (
    (ds.stationid),
    (dt.trucktype),
    ()
);
