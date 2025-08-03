-- Create a cube query using the columns year, city, stationid, and average waste collected.
SELECT
    dd.year,
    ds.city,
    ds.stationid,
    AVG(wastecollected) AS avg_waste_collected

FROM facttrips ft
JOIN dimdate dd ON ft.dateid = dd.dateid
JOIN dimstation ds ON ft.stationid = ds.stationid

GROUP BY CUBE (
    dd.year,
    ds.city,
    ds.stationid
);
